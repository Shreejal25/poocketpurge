using System.Text.Json;
using DataModel.Model;
using DataAcess.Services.Interfaces;

namespace DataAcess.Services
{
    public class ExpenseService : IExpenseService
    {
        private readonly string _expensesFilePath;
        private readonly string _debtsFilePath;

        public ExpenseService()
        {
            // Set the file path for storing expenses and debts
            string appDirectory = AppDirectoryHelper.GetAppDirectoryPath();

            if (!Directory.Exists(appDirectory))
            {
                Directory.CreateDirectory(appDirectory);
            }

            _expensesFilePath = Path.Combine(appDirectory, "expenses.json");
            _debtsFilePath = Path.Combine(appDirectory, "debts.json");
        }

        public async Task<List<Expense>> GetAllTransaction()
        {
            if (!File.Exists(_expensesFilePath))
            {
                return new List<Expense>();
            }

            var json = await File.ReadAllTextAsync(_expensesFilePath);
            return JsonSerializer.Deserialize<List<Expense>>(json) ?? new List<Expense>();
        }

        public async Task<decimal> GetTotalTransaction()
        {
            var expenses = await GetAllTransaction();
            return expenses.Sum(expense => expense.Amount);
        }

        public async Task<Dictionary<string, decimal>> GetCategoryTransaction()
        {
            var expenses = await GetAllTransaction();
            return expenses
                .GroupBy(expense => expense.Category ?? "Uncategorized")
                .ToDictionary(group => group.Key, group => group.Sum(expense => expense.Amount));
        }

        public async Task AddTransaction(Expense newExpense)
        {
            var expenses = await GetAllTransaction();

            // Check if there is enough balance for the debit transaction
            if (newExpense.Type == "Debit")
            {
                var currentBalance = await GetCurrentBalance();
                if (newExpense.Amount > currentBalance)
                {
                    throw new Exception("Insufficient balance to complete this transaction.");
                }
            }

            // Add the new transaction
            expenses.Add(newExpense);

            // Serialize and save the updated list of transactions
            var json = JsonSerializer.Serialize(expenses);
            await File.WriteAllTextAsync(_expensesFilePath, json);
        }

        public async Task DeleteTransaction(Expense expense)
        {
            var expenses = await GetAllTransaction();
            var expenseToDelete = expenses.FirstOrDefault(e => e.Id == expense.Id);
            if (expenseToDelete == null)
            {
                throw new Exception("Expense not found.");
            }

            expenses.Remove(expenseToDelete);

            var json = JsonSerializer.Serialize(expenses);
            await File.WriteAllTextAsync(_expensesFilePath, json);
        }

        public async Task<decimal> GetTotalOutflows()
        {
            var expenses = await GetAllTransaction();
            return expenses
                .Where(expense => expense.Type == "Debit")
                .Sum(expense => expense.Amount);
        }

        public async Task<decimal> GetTotalInflows()
        {
            var expenses = await GetAllTransaction();
            return expenses
                .Where(expense => expense.Type == "Credit")
                .Sum(expense => expense.Amount);
        }

        public async Task<decimal> GetCurrentBalance()
        {
            var totalInflows = await GetTotalInflows();
            var totalDebts = await GetTotalDebtAmount();

            // Current balance = Total inflows + Total debts - Total outflows
            return totalInflows + totalDebts - await GetTotalOutflows();
        }

        public async Task<List<Debt>> GetAllDebts()
        {
            if (!File.Exists(_debtsFilePath))
            {
                return new List<Debt>();
            }

            var json = await File.ReadAllTextAsync(_debtsFilePath);
            return JsonSerializer.Deserialize<List<Debt>>(json) ?? new List<Debt>();
        }

        public async Task AddDebt(Debt newDebt)
        {
            var debts = await GetAllDebts();
            debts.Add(newDebt);

            var json = JsonSerializer.Serialize(debts);
            await File.WriteAllTextAsync(_debtsFilePath, json);
        }

        public async Task DeleteDebt(Debt debt)
        {
            var debts = await GetAllDebts();
            var debtToDelete = debts.FirstOrDefault(d => d.Id == debt.Id);
            if (debtToDelete == null)
            {
                throw new Exception("Debt not found.");
            }

            debts.Remove(debtToDelete);

            var json = JsonSerializer.Serialize(debts);
            await File.WriteAllTextAsync(_debtsFilePath, json);
        }

        private async Task<decimal> GetTotalDebtAmount()
        {
            var debts = await GetAllDebts();
            return debts.Sum(debt => debt.Amount);
        }
    }
}
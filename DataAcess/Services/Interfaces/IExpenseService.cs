using DataModel.Model;

namespace DataAcess.Services.Interfaces
{
    public interface IExpenseService
    {
        Task<List<Expense>> GetAllTransaction();
        Task<decimal> GetTotalTransaction();
        Task<Dictionary<string, decimal>> GetCategoryTransaction();
        Task AddTransaction(Expense newExpense);

        Task DeleteTransaction(Expense expense);
        Task<decimal> GetTotalOutflows();

        Task<decimal> GetTotalInflows();
        Task <decimal>GetCurrentBalance();
        
        
        Task<List<Debt>> GetAllDebts();  // Add this method to the interface
        Task DeleteDebt(Debt debt);
        Task AddDebt(Debt newDebt);

        


    }

}

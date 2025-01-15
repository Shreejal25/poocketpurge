namespace DataModel.Model
{
    public class Expense
    {
        public int Id { get; set; }

        public string title { get; set; }
        public string Type { get; set; }
        public string Category { get; set; }

        public string CustomCategory { get; set; } 

        public decimal Amount { get; set; }

        public DateTime Date { get; set; } = DateTime.Today;

        public string Description { get; set; }

       

    }
}

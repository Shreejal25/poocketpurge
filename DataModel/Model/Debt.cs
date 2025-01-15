namespace DataModel.Model
{
    public class Debt
    {
        public int Id { get; set; }  // Unique identifier for the debt transaction
        public string Title { get; set; }  // Title of the debt
       
        public string Source { get; set; }  // Category of the expense (e.g., "Food", "Rent")
        public string CustomCategory { get; set; }  // Custom category if "Custom" is selected
        public decimal Amount { get; set; }  // Amount of the debt
        public DateTime DueDate { get; set; }  // Due date for the debt repayment
        public string Description { get; set; }  // Description of the debt
    }
}

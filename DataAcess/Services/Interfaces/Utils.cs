

namespace DataAcess.Services.Interfaces
{
    public static class AppDirectoryHelper
    {
        public static string GetAppDirectoryPath()
        {
            return Path.Combine(
                Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
                "ExpenseTrackerApp"
            );
        }
    }
}

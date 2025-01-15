using DataModel.Abstraction;
using DataModel.Model;

namespace DataAcess.Services.Interfaces
{
    public class UserService : UserBase, IUserService
    {
        private List<User> _users;

        public const string SeedUsername = "admin";
        public const string SeedPassword = "passkey";

        // Constructor for initializing the user service
        public UserService()
        {
            _users = LoadUsers();

            if (!_users.Any())
            {
                _users.Add(new User { Username = SeedUsername, Password = SeedPassword });
                SaveUsers(_users);
            }
        }

        public bool Login(User user)
        {
            if (string.IsNullOrEmpty(user.Username) || string.IsNullOrEmpty(user.Password))
            {
                return false;
            }

            return _users.Any(u => u.Username == user.Username && u.Password == user.Password);
        }

        public void Logout()
        {
            // Perform logout logic, such as clearing tokens, user sessions, etc.
            Console.WriteLine("User has been logged out.");
        }
    }
}

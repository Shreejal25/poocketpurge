using DataModel.Model;

namespace pocketPurge.Services
{
    public interface IUserService
    {
        bool Login(User user);
    }

    public class UserService : IUserService
    {
        private readonly List<User> _users;

        public UserService()
        {
            // Example users for demonstration purposes
            _users = new List<User>
            {
                new User { Username = "user1", Password = "password1", PreferredCurrency = "USD" },
                new User { Username = "user2", Password = "password2", PreferredCurrency = "EUR" }
            };
        }

        public bool Login(User user)
        {
            var existingUser = _users.FirstOrDefault(u => u.Username == user.Username && u.Password == user.Password);
            if (existingUser != null)
            {
                user.PreferredCurrency = existingUser.PreferredCurrency;
                return true;
            }

            return false;
        }
    }
}
using DataModel.Model;

namespace DataAcess.Services.Interfaces
{
    public interface IUserService
    {
        bool Login(User user);
        void Logout(); // Add logout method
    }
}
namespace BackendIdiomas.Application.Services.Authentication;

public interface IAuthenticationService{
    // AuthenticationResponse Login(LoginRequest request);
    AuthenticationResult Register(string firstName, string lastName, string email, string password);

    // AuthenticationResponse Register(RegisterRequest request);
    AuthenticationResult Login(string email, string password);

}
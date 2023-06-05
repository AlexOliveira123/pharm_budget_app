abstract class IAuthRepository {
  Future<String> auth(String email, String password);
}

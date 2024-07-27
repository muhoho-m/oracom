// file to cater for authentication failure

class OraSigupWithEmailPassdFailure {
  final String message;

  const OraSigupWithEmailPassdFailure([this.message = "An error occured. Repeat"]);

  factory OraSigupWithEmailPassdFailure.code(String code){
    switch(code){
      case "weak-password" : 
        return const OraSigupWithEmailPassdFailure("Enter a stronger password");
      case "invalid-email" : 
        return const OraSigupWithEmailPassdFailure("Email is not valid or badly formatted");
      case "email-already-in-use" : 
        return const OraSigupWithEmailPassdFailure("An account exists with the same email.");
      case "operation-not-allowed" : 
        return const OraSigupWithEmailPassdFailure("The operation is not allowed");
      case "user-disabled" : 
        return const OraSigupWithEmailPassdFailure("User has been disabled.");
      default: return const OraSigupWithEmailPassdFailure("");
    }
  }

}
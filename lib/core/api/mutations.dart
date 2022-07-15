class Mutations{

  static String me(){
    String user = """
    mutation me(\$accessToken: String!){
    me(input: {accessToken: \$accessToken}){
    id,
    name,
    phoneNumber,
    createdAt,
    updatedAt
  }
}
""";
    return user;
  }

  static String sendSMS(){
    String verifyNumber = """
    mutation SMSVerify(\$phoneNumber: String!){
    sendSms(input: {phoneNumber: \$phoneNumber}){
    operation,
    status
  }
}
""";
    return verifyNumber;
  }

  static String registerUser(){
    String registry = """
    mutation RegisterUser(\$name:String! , \$phoneNumber: String! , \$confirmationCode: String!){
    register(input: {name: \$name , phoneNumber: \$phoneNumber , confirmationCode: \$confirmationCode}){
    accessToken,
    refreshToken
  }
}
""";
    return registry;
  }

  static String loginUser(){
    String login = """
    mutation loginUser(\$phoneNumber: String! , \$confirmationCode: String!){
    login(input: {phoneNumber: \$phoneNumber , confirmationCode: \$confirmationCode}){
    accessToken,
    refreshToken
  }
}
""";
    return login;
  }

  static String logout(){
    String logoutMutation = """
    mutation Logout(\$accessToken: String!){
    logout(input:{accessToken:\$accessToken}){
    status
  }
}
""";
    return logoutMutation;
  }
  static String createDonationPost(){
    String createDonationPostMutation ="""
    mutation createDonationPost(\$accessToken: String!,\$content: String!,\$address: String!,\$bloodType: String!,\$type: String!,\$showPhoneNumber: Boolean!){
    createDonationPost(input:{accessToken:\$accessToken,content:\$content,address:\$address,bloodType:\$bloodType,type:\$type,showPhoneNumber:\$showPhoneNumber}){
    id,
    content,
    address,
    showPhoneNumber,
    type,
    bloodType,
    userId,
    createdAt,
    updatedAt,
    user{id,name,phoneNumber,createdAt,updatedAt},
  }
}
""";
    return createDonationPostMutation;
  }
  static String deleteDonationPost(){
    String deleteDonationPostMutation ="""
    mutation deleteDonationPost(\$accessToken: String!,\$id: String!){
    deleteDonationPost(input:{accessToken:\$accessToken,id:\$id}){
    id,
    content,
    address,
    showPhoneNumber,
    type,
    bloodType,
    userId,
    createdAt,
    updatedAt,
    user{id,name,phoneNumber,createdAt,updatedAt},
  }
}
""";
    return deleteDonationPostMutation;
  }
  static String createMedicinePost(){
    String createMedicinePostMutation ="""
    mutation createMedicinePost(\$accessToken: String!,\$content: String!,\$address: String!,\$photo: String!,\$type: String!,\$showPhoneNumber: Boolean!){
    createMedicinePost(input:{accessToken:\$accessToken,content:\$content,address:\$address,photo:\$photo,type:\$type,showPhoneNumber:\$showPhoneNumber}){
    id,
    content,
    address,
    showPhoneNumber,
    type,
    photo,
    userId,
    createdAt,
    updatedAt,
    user{id,name,phoneNumber,createdAt,updatedAt},
  }
}
""";
    return createMedicinePostMutation;
  }
  static String deleteMedicinePost(){
    String deleteMedicinePostMutation ="""
    mutation deleteMedicinePost(\$accessToken: String!,\$id: String!){
    deleteMedicinePost(input:{accessToken:\$accessToken,id:\$id}){
    id,
    content,
    address,
    showPhoneNumber,
    type,
    photo,
    userId,
    createdAt,
    updatedAt,
    user{id,name,phoneNumber,createdAt,updatedAt},
  }
}
""";
    return deleteMedicinePostMutation;
  }
  static String createHelpPost(){
    String createHelpPostMutation ="""
    mutation createHelpPost(\$accessToken: String!,\$content: String!,\$address: String!,\$location: String!,\$showPhoneNumber: Boolean!){
    createHelpPost(input:{accessToken:\$accessToken,content:\$content,address:\$address,location:\$location,showPhoneNumber:\$showPhoneNumber}){
    id,
    content,
    address,
    showPhoneNumber,
    type,
    location,
    createdAt,
    updatedAt,
    user{id,name,phoneNumber,createdAt,updatedAt},
  }
}
""";
    return createHelpPostMutation;
  }
  static String deleteHelpPost(){
    String deleteHelpPostMutation ="""
    mutation deleteHelpPost(\$accessToken: String!,\$id: String!){
    deleteHelpPost(input:{accessToken:\$accessToken,id:\$id}){
    id,
    content,
    address,
    showPhoneNumber,
    type,
    location,
    createdAt,
    updatedAt,
    user{id,name,phoneNumber,createdAt,updatedAt},
  }
}
""";
    return deleteHelpPostMutation;
  }
}
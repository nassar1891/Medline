import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
class Mutations{
  static String sendSMS(String phoneNumber){
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

  static String registerUser(String name, String phoneNumber, String confirmationCode){
    String registry = """
    mutation RegisterUser(\$name: String! , \$phoneNumber: String! , \$confirmationCode: String!){
    register(input: {name: \$name , phoneNumber: \$phoneNumber , confirmationCode: \$confirmationCode}){
    accessToken,
    refreshToken
  }
}
""";
    return registry;
  }
  static String logout(String accessToken){
    String logoutMutation = """
    mutation Logout(\$accessToken: String!){
    logout(input:{accessToken:\$accessToken}){
    status
  }
}
""";
    return logoutMutation;
  }
  static String createDonationPost(String accessToken,String content,String address,String bloodType,String type,Bool showPhoneNumber,){
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
  static String deleteDonationPost(String accessToken,String id){
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
  static String createMedicinePost(String accessToken,String content,String address,String photo,String type,Bool showPhoneNumber){
    String createMedicinePostMutation ="""
    mutation createMedicinePost(\$accessToken: String!,\$content: String!,\$address: String!,\$photo: String!,type: String!,\$showPhoneNumber: Boolean!){
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
  static String deleteMedicinePost(String accessToken,String id){
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
  static String createHelpPost(String accessToken,String content,String address,String location,Bool showPhoneNumber){
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
  static String deleteHelpPost(String accessToken,String id){
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
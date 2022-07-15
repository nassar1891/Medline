class Queries{
  static String me(){
    String me ="""
    query me(\$accessToken: String!){
    me(input:{accessToken:\$accessToken}){
    id,
    name,
    phoneNumber,
    createdAt,
    updatedAt,
  }
}
""";
    return me;
  }

  static String donationPosts(){
    String donationPosts ="""
    query donationPosts(\$accessToken: String!,\$skip: int!,\$take: String!,\$cursor: String!,\$type: String!,\$bloodType: String!){
    donationPosts(input:{accessToken:\$accessToken,skip:\$skip,take:\$take,cursor:\$cursor,type:\$type,bloodType:\$bloodType}){
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
    return donationPosts;
  }
  static String donationPost(){
    String donationPost ="""
    query donationPost(\$accessToken: String!){
    donationPost(input:{accessToken:\$accessToken}){
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
    return donationPost;
  }
  static String medicinePosts(){
    String medicinePosts ="""
    query medicinePosts(\$accessToken: String!,\$skip: int!,\$take: String!,\$cursor: String!,\$type: String!){
    medicinePosts(input:{accessToken:\$accessToken,skip:\$skip,take:\$take,cursor:\$cursor,type:\$type}){
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
    return medicinePosts;
  }
  static String medicinePost(){
    String medicinePost ="""
    query medicinePost(\$accessToken: String!,\$id: int!){
    medicinePost(input:{accessToken:\$accessToken,id:\$id}){
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
    return medicinePost;
  }
  static String helpPosts(){
    String helpPosts ="""
    query helpPosts((\$accessToken: String!,\$skip: int!,\$take: String!,\$cursor: String!){
    helpPosts(input:{accessToken:\$accessToken,skip:\$skip,take:\$take,cursor:\$cursor}){
    id,
    content,
    address,
    showPhoneNumber,
    location,
    userId,
    createdAt,
    updatedAt,
    user{id,name,phoneNumber,createdAt,updatedAt},
  }
}
""";
    return helpPosts;
  }
  static String helpPost(){
    String helpPost ="""
    query helpPost((\$accessToken: String!){
    helpPost(input:{accessToken:\$accessToken}){
    id,
    content,
    address,
    showPhoneNumber,
    location,
    userId,
    createdAt,
    updatedAt,
    user{id,name,phoneNumber,createdAt,updatedAt},
  }
}
""";
    return helpPost;
  }

}
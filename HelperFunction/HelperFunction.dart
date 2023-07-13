import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction{

  static String userLoggedInKey ="LOGGEDINKEY";
  static String userNameKey ="USERNAMEKEY";
  static String  userEmailKey="USEREMAILKEY";
  static String  userRegisterNumKey="USERREGISTERKEY";
  static String  userCollegeKey="USERCOLLEGEKEY";


  // saving the data
  static Future<bool> saveUserLoggedInStatus(bool isUserLoggedIn) async{
    SharedPreferences sf= await SharedPreferences.getInstance();
    return await sf.setBool(userLoggedInKey, isUserLoggedIn);
  }
  static Future<bool> saveUserNameSF(String userName) async{
    SharedPreferences sf= await SharedPreferences.getInstance();
    return await sf.setString(userNameKey, userName);
  }
  static Future<bool> saveUserRegisterNumSF(String registerNum) async{
    SharedPreferences sf= await SharedPreferences.getInstance();
    return await sf.setString(userRegisterNumKey, registerNum);
  }

  static Future<bool> saveUserCollegeSF(String college) async{
    SharedPreferences sf= await SharedPreferences.getInstance();
    return await sf.setString(userCollegeKey, college);
  }
  static Future<bool> saveUserEmailSF(String userEmail) async{
    SharedPreferences sf= await SharedPreferences.getInstance();
    return await sf.setString(userEmailKey, userEmail);
  }


  static Future<bool?> getUserLoggedInStatus() async{
    SharedPreferences sf= await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }
  static Future<String?> getUserEmailFromSF() async{
    SharedPreferences sf= await SharedPreferences.getInstance();
    return sf.getString(userEmailKey);
  }

  static Future<String?> getUserNameFromSF() async{
    SharedPreferences sf= await SharedPreferences.getInstance();
    return sf.getString(userNameKey);
  }

  static Future<String?> getUserCollegeFromSF() async{
    SharedPreferences sf= await SharedPreferences.getInstance();
    return sf.getString(userCollegeKey);
  }

  static Future<String?> getUserRegisterNumFromSF() async{
    SharedPreferences sf= await SharedPreferences.getInstance();
    return sf.getString(userRegisterNumKey);
  }


}
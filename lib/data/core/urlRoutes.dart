class UrlRoutes {
  //baseUrl
  // static String baseUrl = "http://127.0.0.1:8000/api"; // old base url
  // static String baseUrl = "http://167.71.79.133/api"; // update
  static String baseUrl = "https://project2.amit-learning.com/api"; // new base url

  //authUrl
  static String loginUrl = "$baseUrl/auth/login";
  static String register = "$baseUrl/auth/register?name=&email=&password=";
  static String profile = "$baseUrl/auth/profile/5";
  static String getOtp = "134.209.132.80/api/auth/otp/{email}";
  static String updateNameAndPassword = "$baseUrl/auth/user/update/2";

  //favorite
  static String addFavorite = "$baseUrl/favorites?user_id=1&job_id=1";
  static String showAllFavorites = "$baseUrl/favorites/1";
  static String deleteFavorite = "$baseUrl/favorites/3";

  //profileUrl
  static String updateProfile = "$baseUrl/user/profile/{user_id}?intersted_work=si&offline_place=egy&remote_place=us";
  static String editProfile = "$baseUrl/user/profile/edit/{user_id}?bio=sshs&address=tanta&mobile=011111155";
  static String editProfileLanguage = "$baseUrl/user/profile/language/{user_id}?language=english";
  static String addPortfolio = "$baseUrl/user/profile/portofolios/2";
  static String getPortfolios = "$baseUrl/user/profile/portofolios/12";
  static String editPortfolio = "$baseUrl/user/profile/portofolios/1?name=ssgsgs";
  static String deletePortfolio = "$baseUrl/user/profile/portofolios/1";

  //jobs
  static String showJobs = "$baseUrl/jobs";
  static String showSuggestJobs = "$baseUrl/jobs/sugest/2";
  static String searchJob = "$baseUrl/jobs/search?name=";
  static String filterSearch = "$baseUrl/jobs/filter?name=&location=&salary=";

  //education
  static String showEducations = "$baseUrl/education/1";
  static String addEducation = "$baseUrl/education";
  static String editEducation = "$baseUrl/education?universty=Cairo&title=CS&start=2014&end=2018&id=1";

  //experince
  static String addExperince = "$baseUrl/experince?user_id=1&postion=flutter&type_work=part&comp_name=amit&location=nsnvhdvdh&start=2020";
  static String endExperinceJob = "$baseUrl/experince/2";

  //apply job
  static String reviewApplys = "$baseUrl/apply?id=1&accept=false&jobs_id=1";
  static String apply = "$baseUrl/apply";

  //company
  static String company ="$baseUrl/company";

  //chats
  static String userSendMessage ="$baseUrl/chat/user?massage=ahmedddlkdkdkdkd&user_id=1&comp_id=3";
  static String companySendMessage ="$baseUrl/chat/company?massage=hsjhsj&user_id=1&comp_id=1";
  static String chat ="$baseUrl/chat?user_id=1&comp_id=1";

}

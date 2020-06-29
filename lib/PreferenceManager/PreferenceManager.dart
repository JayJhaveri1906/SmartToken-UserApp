import 'package:shared_preferences/shared_preferences.dart';

import 'package:hasura_connect/hasura_connect.dart';

String url = 'https://token.technozer.com/hasura/v1/graphql';
HasuraConnect hasuraConnect = HasuraConnect(url, headers: {
  "x-hasura-admin-secret": "technozer"
});

// CRUD of UserAccessToken in Preference
Future<Null> saveUserTokenInPreference(String userToken) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('logged_in_user_token', userToken);
}

Future<String> fetchUserTokenFromPreference() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('logged_in_user_token');
}

Future<bool> deleteUserTokenFromPreference() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.remove("logged_in_user_token");
}

Future<bool> isUserLoggedIn() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.containsKey("logged_in_user_token");
}

String getUserQuery = """
  query getUser(\$email: String!) {
    users(where: {email: {_eq: \$email}}) {
      id
      first_name
      last_name
      email
      profile_image
      mobile_number
      isMobileVerified
      
      address{
        address_line_1
        address_line_2
        pincode
        state
        city
        country
      }
    }
  }
""";

String getUserSubscription = """
  subscription getUser(\$email: String!) {
    users(where: {email: {_eq: \$email}}) {
      id
      first_name
      last_name
      email
      profile_image
      mobile_number
      isMobileVerified
      
      address{
        address_line_1
        address_line_2
        pincode
        state
        city
        country
      }
    }
  }
""";

String addUserMutation = """
  mutation addUser( \$email: String!, 
  								  \$first_name: String!,
									  \$last_name: String,
									  \$mobile_number: String,
									  \$profile_image: String,) {
  insert_users(objects: {
    email: \$email,
    first_name: \$first_name,
    last_name: \$last_name,
    mobile_number: \$mobile_number,
    profile_image: \$profile_image
  }){
    returning{
      id
      first_name
      last_name
      email
      profile_image
    }
  }
}
""";

String updateUserMutation = """
mutation updateUserProfile(
  \$user_id: Int!,
  \$mobile_number: String!, 
  \$address1: String!, 
  \$address2: String!, 
  \$city: String!, 
  \$country: String!, 
  \$pincode: Int!, 
  \$state: String!) {
  update_users(_set: {mobile_number: \$mobile_number}, where: {id: {_eq: \$user_id}}) {
    returning {
      id
    }
  }
  delete_addresses(where: {user_id: {_eq: \$user_id}}) {
    returning {
      id
    }
  }
  insert_addresses(objects: {
    address_line_1: \$address1,
    address_line_2: \$address2,
    city: \$city,
    country: \$country,
    pincode: \$pincode,
    state: \$state,
    user_id: \$user_id}) {
    returning {
      id
    }
  }
}
""";

String getMyUpcomingTokensQuery = """
query getMyUpcomingTokens(\$email: String, \$time: timestamptz) {
  tokens(where: {_and: {user: {email: {_eq: \$email}}, created_at: {_gte: \$time}}}) {
    created_at
    id
    in_time
    is_walkin
    out_time
    store_id
    token_number
    updated_at
    user_id
    visitor_address
    visitor_mobile_number
    visitor_name
    store {
      updated_at
      state
      pincode
      name
      mobile_number
      isVerified
      isDeleted
      id
      daily_token_limit
      created_at
      country
      contact_person_name
      city
      address_line_2
      address_line_1
    }
  }
}
""";


String getMyPastTokensQuery = """
query getMyUpcomingTokens(\$email: String, \$time: timestamptz) {
  tokens(where: {_and: {user: {email: {_eq: \$email}}, created_at: {_lt: \$time}}}) {
    created_at
    id
    in_time
    is_walkin
    out_time
    store_id
    token_number
    updated_at
    user_id
    visitor_address
    visitor_mobile_number
    visitor_name
    store {
      updated_at
      state
      pincode
      name
      mobile_number
      isVerified
      isDeleted
      id
      daily_token_limit
      created_at
      country
      contact_person_name
      city
      address_line_2
      address_line_1
    }
  }
}
""";
/// Application protocol scheme
const scheme = "http";

/// Domain of the backend
const domain = "10.100.12.132:58000";

/// Generate OTP
const urlGenerateOtp = "/account/generate_otp";

/// Verify OTP
const urlVerifyOtp = "/account/verify_otp";

/// Get Account details
const urlProfile = "/account/profile";

/// Refresh token
const urlRefreshToken = "/account/refresh_token";

/// Logout
const urlLogout = "/account/logout";

/// Delete account
const urlDeleteAccount = "/account/delete";

/// User domain
const urlUser = "/users/";

/// Fetch All Interests
const urlInterests = "/interests/";

/// Fetch specific Interest (from interest id)
const urlSpecificInterest = "/interests/%s";

/// Fetch user interests
const urlUserInterests = "/users/interests/";

// Register Vendor
const String urlRegisterVendor = "/vendor/register";

// Register Business
const String urlBusinessVendor = "/vendor/business/register";

// Create/Get Business/es for/of a particular vendor
const String urlBusiness = "/vendor/%s/business";

// Create/Get Activity/es for/of a particular vendor
const String urlActivity = "/vendor/activities";

/// Upload user image
const urlUpload = "/users/upload/";

/// Fetch popular trips
const urlTrips = "/users/trips";

/// Fetch and save favourite trips
const urlFavouriteTrips = "/users/trips/favourites";

/// Remove trip (with id) from favourites
const urlRemoveFavouriteTrip = "/users/trips/favourites/%s";

/// Fetch trip itineray (with id)
const urlTripItineray = "/users/trips/%s/itineray";

/// Fetch and reviews to a trip (with id)
const urlTripReview = "/users/trips/%s/reviews";

/// Report a review (with id)
const urlReportTripReview = "/users/trips/reviews/%s";

/// Fetch recommended, subscribed and past activities with optional query parameter "type" to filter one
const urlActivities = "/activities";

/// Fetch details of a specific activity with id
const urlSpecificActivity = "/activities/%s";

/// Rate an activity with id
const urlRateActivity = "/activities/%s/rating";

/// Report an activity with id
const urlReportActivity = "/activities/%s/report";

/// Fetch/Add users favourite activities
const urlFavouriteActivities = "/activities/favourites";

/// Remove an activity from user favourites with its id
const urlRemoveFavouriteActivities = "/activities/favourites/%s";

/// Fetch Search results
const urlSearch = "/search";

/// Fetch Top searches
const urlTopSearches = "/search/top_searches";

Uri getUriWithDomain(String url, {Map<String, dynamic>? query}) {
  switch (scheme) {
    case "http":
      return Uri.http(domain, url, query);
    case "https":
      return Uri.https(domain, url, query);
    default:
      throw UnimplementedError();
  }
}

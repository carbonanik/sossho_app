class Links {
  static String baseUrl = "http://10.0.2.2:8000";

  static String login = '/api/v1/public/user/login';

  static String signUp = '/api/v1/public/user/signup';

  static String productsPublic = '/api/v1/public/product';

  // secure
  static String products = '/api/v1/secured/product';

  static String cart = '/api/v1/secured/personal-cart';

  static String profile = '/api/v1/secured/user/profile';

  static String billingAddress = '/api/v1/secured/billing-address';

  static String deliveryAddress = '/api/v1/secured/delivery-address';
}

class Links {
  // static String baseUrl = "http://192.168.0.198:8000";

  static String baseUrl = "https://e-api.sossho.com";

  static String login = '/api/v1/public/user/login';

  static String signUp = '/api/v1/public/user/signup';

  static String forgotPassword = '/api/v1/public/forgot-password';

  static String resetPassword = '/api/v1/public/reset-password';

  static String productsPublic = '/api/v1/public/product';

  static String homeProducts = '/api/v1/public/all-product';

  static String productsCategory = '/api/v1/public/product-category';

  static String productBrand = '/api/v1/public/product-brand';

  // secure
  static String products = '/api/v1/secured/product';

  static String category = '/api/v1/secured/product-category';

  static String cart = '/api/v1/secured/personal-cart';

  static String profile = '/api/v1/secured/user/profile';

  static String billingAddress = '/api/v1/secured/billing-address';

  static String deliveryAddress = '/api/v1/secured/delivery-address';

  static String order = '/api/v1/secured/orders';

  static String changePassword = '/api/v1/secured/change-password';

  static String applyPromo = '/api/v1/secured/promo/apply';

  static String review = '/api/v1/secured/reviews';

  static String user = '/api/v1/secured/user';
}

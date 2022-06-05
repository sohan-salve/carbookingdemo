Rails.configuration.stripe = {
  :publishable_key => 'pk_test_51L6TiGSJ232YeIwaYX1LZYDZEnEQU3NIFsLIADk31Avf42BqU2xbLIebFoYNfTIEUd8KN6ETwUM16woHDTbV8dmZ00V7LetGAa',
  :secret_key      => 'sk_test_51L6TiGSJ232YeIwaZn6gQSenWhHtDHWvpWwrgSIubdh6L6VM9M9nE4xD41Funtyt9CTgwE2RbziQe7XPBS8hfuwD00XL6DOZJn'
}

 Stripe.api_key = Rails.configuration.stripe[:secret_key]

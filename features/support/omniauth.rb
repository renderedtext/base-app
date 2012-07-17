FACEBOOK_INFO = {
  "id" => "12345",
  "link" => "http://facebook.com/john_doe",
  "email" => "user@example.com",
  "first_name" => "John",
  "last_name" => "Doe",
  "website" => "http://www.example.com"
}

Before("@omniauth_test") do
  OmniAuth.config.test_mode = true

  # the symbol passed to mock_auth is the same as the name of the provider set up in the initializer
  OmniAuth.config.mock_auth[:facebook] = {
      "uid" => "12345",
      "provider" => "facebook",
      "user_info" => { "nickname" => "Johny" },
      "credentials" => { "token" => "exampletoken" },
      "info" => FACEBOOK_INFO
  }
end

After("@omniauth_test") do
  OmniAuth.config.test_mode = false
end

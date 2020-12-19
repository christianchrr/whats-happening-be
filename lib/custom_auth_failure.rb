class CustomAuthFailure < Devise::FailureApp
  def respond
    http_auth
  end
end
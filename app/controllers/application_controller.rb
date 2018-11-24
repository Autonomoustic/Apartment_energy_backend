class ApplicationController < ActionController::Base

  def get_current_user
    id = decoded_token['id']
    User.find_by(id: id)
  end

  def decode_token
    token = request.headers['Authorization']
    JWT.decode[token, secret][0]
  end
 
  def secret
    'hello'
  end
end

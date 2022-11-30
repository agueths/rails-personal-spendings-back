class ApplicationController < ActionController::API
  def authorized_user?
    auth_header = request.headers['Authorization']
    return false unless auth_header

    token = auth_header.split(' ').last
    token_data = Tokenization.decode(token)
    # TODO: Verify token data
    true
  rescue e
    false
  end

  def authorization_required
    render json: { error: true, message: 'Login needed' }, status: :unauthorized unless authorized_user?
  end
end

class Tokenization
  include ActiveModel::Model

  def self.encode(payload)
    JWT.encode(payload, Rails.application.credentials[:jwt_secret_key])
  end

  def self.decode(token)
    JWT.decode(token, Rails.application.credentials[:jwt_secret_key], true, algorithm: 'HS256')[0]
  end
end

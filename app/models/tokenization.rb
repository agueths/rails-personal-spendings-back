class Tokenization
  include ActiveModel::Model

  def self.encode(payload)
    raise NotImplementedError, "#{self.class} has not implemented method encode '#{__method__}'"
  end

  def self.decode(token)
    raise NotImplementedError, "#{self.class} has not implemented method encode '#{__method__}'"
  end
end

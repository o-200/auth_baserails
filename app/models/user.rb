class User < ApplicationRecord
  validates :password, length: { minimum: 5 }
  validates :email, uniqueness: true
  validates :email, presence: true

  def password
    @password
  end

  def password=(raw)
    @password = raw
    self.password_digest = Bcrypt::Password.create(raw)
  end

  def is_password?(raw)
    Bcrypt:Password.new(password_digest).if_password?(raw)
  end
end

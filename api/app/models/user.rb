class User < ActiveRecord::Base
  has_secure_password

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            email: true

  validates :password,
            presence: { on: :create },
            length: { minimum: 6, allow_nil: true },
            confirmation: :true

  validates :password_confirmation,
            presence: { on: :update },
            if: '!password.nil?'

 

  def token
    "#{self.id}-#{self.email}"
  end

end

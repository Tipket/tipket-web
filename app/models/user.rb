class User < ActiveRecord::Base
    before_save { self.email = email.downcase } 

    validates :name, presence: false, length: { maximum: 50 }
    validates :username, presence: true, uniqueness: true, length: { maximum: 15 }
    validates :bio, presence: false, length: { maximum: 100 }

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

    has_secure_password
    validates :password, length: { minimum: 8 }
end

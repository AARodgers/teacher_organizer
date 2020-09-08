class User < ActiveRecord::Base
    has_secure_password

    has_many :user_standards
    has_many :standards, through: :user_standards
end

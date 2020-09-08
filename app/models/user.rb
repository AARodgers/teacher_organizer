class User < ActiveRecord::Base
    has_many :standards
    has_secure_password
end

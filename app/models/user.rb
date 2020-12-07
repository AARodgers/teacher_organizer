# frozen_string_literal: true

# A User is a teacher that will use this application to organize their teaching standards and resources to teach them.
class User < ActiveRecord::Base
  has_secure_password

  has_many :user_standards
  has_many :standards, through: :user_standards
end

# frozen_string_literal: true

class UserStandard < ActiveRecord::Base
  belongs_to :user
  belongs_to :standard
end

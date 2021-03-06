# frozen_string_literal: true

# Creates join table for User and Standard models.
class CreateUserStandards < ActiveRecord::Migration[6.0]
  def change
    create_table :user_standards do |t|
      t.integer :user_id
      t.integer :standard_id
    end
  end
end

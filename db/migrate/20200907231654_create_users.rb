# frozen_string_literal: true

# Creates the User table with attributes name and email.
class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
    end
  end
end

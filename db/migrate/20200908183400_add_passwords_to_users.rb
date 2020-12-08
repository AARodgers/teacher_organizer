# frozen_string_literal: true

# Adds a password column to the User table.
class AddPasswordsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password_digest, :string
  end
end

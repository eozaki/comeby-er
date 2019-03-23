# frozen_string_literal: true

class DeviseCreateBuyers < ActiveRecord::Migration[5.1]
  def change
    create_table :buyers do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      t.string :name

      t.timestamps null: false
    end

    add_index :buyers, :email,                unique: true
    add_index :buyers, :reset_password_token, unique: true
    # add_index :buyers, :confirmation_token,   unique: true
    # add_index :buyers, :unlock_token,         unique: true
  end
end

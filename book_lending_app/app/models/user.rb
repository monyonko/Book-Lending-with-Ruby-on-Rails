class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has many :records
  has_many :authors

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end

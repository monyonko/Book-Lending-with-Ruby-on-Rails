class User < ApplicationRecord
  has_prefix_id :acct,
  minimum_length: 32,
  override_param: false,
  override_param: false,
  salt: "",
  fallback: false
  

  has_secure_password
  has_many :sessions, dependent: :destroy
  has many :records
  has_many :authors
  has_many :reviews
  has_many :admins

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end

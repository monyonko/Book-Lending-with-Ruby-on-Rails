class User < ApplicationRecord
  has_prefix_id :acct,
  minimum_length: 32,
  override_param: false,
  override_param: false,
  salt: "",
  fallback: false
  

  has_secure_password
  has_many :sessions, dependent: :destroy
  has many :records, dependent: :destroy
  has_many :authors, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :admins, dependent: :destroy

  validates :username, :email, :password, :is_admin, :is_author, :is_active, presence: true
  validates :username, :email, uniqueness: {message: 'An account with %{value} already exists'},
  validates :username, length: {in: 5....30}
  validates :email, confirmation: true
  validates :email_confirmation, presence: true, if: :email_changed?
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :terms, acceptance: true

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end

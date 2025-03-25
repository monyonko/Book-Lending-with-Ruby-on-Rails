class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :authors
  has_many :records
  has_many :verifications
  has_many :reviews

  validates :username, :email, :password, :is_admin, :is_author, :is_active, presence: true
  validates :username, :email, uniqueness: {message: 'An account with %{value} already exists'}
  validates :username, length: {in: 5..30}
  validates :email, confirmation: true
  validates :email_confirmation, presence: true, if: :email_changed?
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :terms, acceptance: true

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end

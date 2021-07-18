class User < ApplicationRecord
  has_secure_password
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments
  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true
  validates :password, confirmation: true, length: { in: 4..20 }
end

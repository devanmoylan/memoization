class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :subscription

  scope :has_a_discount, -> { joins(subscription: :discount) }
end

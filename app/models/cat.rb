class Cat < ApplicationRecord
  belongs_to :user
  has_many :claims
  has_many :users, through: :claims
end

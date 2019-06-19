class User < ApplicationRecord
  has_many :cats
  has_many :claims
  validates :username, uniqueness: true  
  has_secure_password


  # def selected_cats
  #   self.claims.map { |claim|
  #       claim.cat
  #     }
  # end
end

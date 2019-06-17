class User < ApplicationRecord
  has_many :cats
  has_many :claims
  

  # def selected_cats
  #   self.claims.map { |claim|
  #       claim.cat
  #     }
  # end
end

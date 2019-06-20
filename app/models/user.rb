class User < ApplicationRecord
  has_many :owned_cats, foreign_key: "user_id", class_name: "Cat"
  has_many :claims
  has_many :cats, through: :claims
  validates :username, uniqueness: true
  has_secure_password
  

  def unique_cats
    self.cats.uniq
  end

  def unique_claims
    self.claims.uniq
  end

  def my_claims
    self.claims & Claim.all
  end

  def pending_claims
    self.cats & Claim.claimed_cats
  end
  #i want this to be a list of all pending adoption requestions
#=>7
  def inactive_claims
    self.claims.select do |claim|
      !claim.active?
    end
  end

  def cat_claim_names
    self.claims.all.map do |claim|
      claim.cat.name
    end
  end

  def cat_claim_ids
    self.claims.all.map do |claim|
      claim.cat_id
    end
  end#an ARRAY that contains all cat_IDs from self.claims WORKS

  # def selected_cats
  #   self.claims.map { |claim|
  #       claim.cat
  #     }
  # end
end
#potential_adopt = User.find(params[:claim_id])
  # adopt_request = potential_adopt.claims.find(params[:id])
#[2, 6, 13, 99, 27] & [2, 6] => 2

#parts
#self.cats => all my cats

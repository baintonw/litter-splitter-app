class Claim < ApplicationRecord
  belongs_to :user
  belongs_to :cat

  def self.empty
    self.all.each do |claim|
      claim.delete
    end
  end

  def self.cat_ids
    Claim.all.map do |claim|
      claim.cat_id
    end
  end

  def self.user_ids
    Claim.all.map do |claim|
      claim.user_id
    end
  end

  def self.cat_names
    Claim.all.map do |claim|
      claim.cat.name
    end
  end

  def self.claimed_cats
    Claim.all.map do |claim|
      claim.cat
    end
  end


end

class Cat < ApplicationRecord
  belongs_to :user
  has_many :claims
  has_many :users, through: :claims

  def release
    if self.adopted?
      self.toggle(:adopted)
    end
  end

  def self.release_all
    Cat.all.each do |cat|
      cat.release
      cat.save
    end
  end

end

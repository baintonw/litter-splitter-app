class Cat < ApplicationRecord
  belongs_to :user
  has_many :claims
  has_many :users, through: :claims

  def release
    if self.adopted?
      self.toggle(:adopted)
    else
      puts "Cat not adopted"
    end
  end
  
end

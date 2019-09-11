class Cat < ApplicationRecord
  belongs_to :user, required: false
  has_many :claims
  has_many :users, through: :claims

  def release
    if self.adopted?
      self.update(adopted: false)
    end
    self.save
  end

  def self.release_all
    Cat.all.each do |cat|
      cat.release
      cat.save
    end
  end

  def self.nil_user
    Cat.all.each do |cat|
      cat.user_id = nil
      cat.save
    end
  end#redundant?

  def toggle_adopted
    self.update(:adopted => true)
    # if !@cat.adopted?
    #   @cat.toggle(:adopted)
    #   @cat.save
    # end
  end


end

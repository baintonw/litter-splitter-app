class Cat < ApplicationRecord
  belongs_to :user
  has_many :claims
  has_many :users, through: :claims

  def release
    if self.adopted?
      byebug
      self.toggle(:adopted)
      byebug
      self.user_id = nil
    end
  end

end

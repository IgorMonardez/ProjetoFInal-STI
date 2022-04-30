class User < ApplicationRecord
  has_secure_password
  validates :login, presence: true, length: { maximum: 11 }
  validates :password, presence: true, length: { minimum: 6 }
  validates :name, presence: true

  def self.search(search)
    if search
      where(["name LIKE ?","%#{search}%"])
    else
      all
    end
  end
end

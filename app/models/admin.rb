class Admin < ApplicationRecord
  validates :nome, presence: true
  validates :iduff, presence: true
end

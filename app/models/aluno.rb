class Aluno < ApplicationRecord
  has_secure_password
  validates! login, presence: true, length: {maximum: 11}
  validates! password, presence: true, legnth: {minimum: 6}

end

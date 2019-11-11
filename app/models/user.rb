class User < ApplicationRecord

# == Validations =================================================
  validates :first_name, :last_name, :age, :email, presence: true
  validates :email, uniqueness: true
end

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # == Validations =================================================
  validates :first_name, :last_name, :age, :email, presence: true
  validates :email, uniqueness: true

  # == Enums =======================================================
  enum role: {
    patient: 0,
    doctor: 1,
    admin: 2
  }

  # == Methods ======================================================
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end

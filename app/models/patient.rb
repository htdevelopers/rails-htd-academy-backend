class Patient < ApplicationRecord

  validates :first_name, :last_name, :age, presence: true

  enum gender: {
    male: 1,
    female: 2,
    other: 3
  }
end

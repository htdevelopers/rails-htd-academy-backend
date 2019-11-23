class Patient < ApplicationRecord

  belongs_to :doctor, optional: true

  validates :first_name, :last_name, :age, presence: true

  enum gender: {
    male: 0,
    female: 1,
    other: 2
  }
end

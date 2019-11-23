class Patient < ApplicationRecord
  validates :first_name, :last_name, :age, :gender, presence: true

  enum gender: {
      male: 0,
      female: 1,
      other: 2
  }
end

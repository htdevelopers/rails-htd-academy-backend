class Doctor < ApplicationRecord

  has_many :patients

  validates :first_name, :last_name, :practicing_from, :qualification_number, :employment, presence: true
  validates_uniqueness_of :qualification_number

  enum employment: {
    full_time: 0,
    part_time: 1,
    intern: 2,
    contract: 3
  }
end

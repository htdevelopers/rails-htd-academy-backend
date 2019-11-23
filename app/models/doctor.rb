class Doctor < ApplicationRecord
  validates_presence_of :first_name, :last_name, :practicing_from, :qualification_number, :employment
  validates_uniqueness_of :qualification_number

  has_many :patients

  enum employment: {
      full_time: 0,
      part_time: 1,
      intern: 2,
      contract: 3
  }
end

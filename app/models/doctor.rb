# frozen_string_literal: true

class Doctor < ApplicationRecord
  validates :first_name, :last_name, :practicing_from, :qualification_number, :employment, presence: true
  validates :qualification_number, uniqueness: true

  enum employment: {
    full_time: 0,
    part_time: 1,
    intern: 2,
    contract: 3
  }
  end

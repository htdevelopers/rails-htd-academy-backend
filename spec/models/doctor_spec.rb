require 'rails_helper'

describe Doctor do
  context 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:practicing_from) }
    it { should validate_presence_of(:qualification_number) }
    it { should validate_presence_of(:employment) }
  end

  context 'uniqueness' do
    before { FactoryBot.create(:doctor) }

    it { should validate_uniqueness_of(:qualification_number) }
  end

  context 'enumerators' do
    it { should define_enum_for(:employment).with_values(%w(full_time part_time intern contract)) }
  end
end

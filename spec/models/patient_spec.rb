require 'rails_helper'

describe Patient do
  context 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :age }
  end

  context 'enumerators' do
    it { should define_enum_for(:gender).with_values(%w(male female other)) }
  end
end

# frozen_string_literal: true
require "rails_helper"

describe User do
  context 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :email }

    context 'uniqueness' do
      let!(:user) { create(:user) }

      it { should validate_uniqueness_of(:email) }
    end
  end

  context 'enumerators' do
    it { should define_enum_for(:role).with_values(%w(patient doctor admin)) }
  end
end

require 'rails_helper'

describe User do
  context 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }

    context 'uniqueness' do
      let!(:user) { create(:user) }

      it { should validate_uniqueness_of(:email).case_insensitive }
    end
  end
end

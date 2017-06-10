require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    describe 'email' do
      it 'must be present' do
        is_expected.to validate_presence_of(:email)
      end

      it 'must be uniq' do
        is_expected.to validate_uniqueness_of(:email).case_insensitive
      end

      it 'must be in the correct format' do
        is_expected.to allow_value('test@email.com').for(:email)
      end
    end

    it 'password must be confirmed' do
      is_expected.to validate_confirmation_of(:password)
    end
  end
end

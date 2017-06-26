require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

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

    it 'auth_token must be uniq' do
        is_expected.to validate_uniqueness_of(:auth_token)
      end
  end

  describe '#info' do
    it 'returns emails, created_at and a token' do
      user.save!

      allow(Devise).to receive(:friendly_token).and_return("abc123TOKEN")

      expect(user.info).to eq("#{user.email} - #{user.created_at} - Token: abc123TOKEN")
    end
  end
end

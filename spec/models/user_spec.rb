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

  describe '#generate_authentication_token!' do
    it 'generates a uniq auth token' do
      allow(Devise).to receive(:friendly_token).and_return("abc123TOKEN")

      user.generate_authentication_token!
      expect(user.auth_token).to eq('abc123TOKEN')
    end

    it 'generates another auth token when the current auth token already has been taken' do
      allow(Devise).to receive(:friendly_token).and_return('abcTOKEN123', 'abcTOKEN123', 'TOKENabc123')
      existing_user = create(:user)

      user.generate_authentication_token!

      expect(user.auth_token).not_to eq(existing_user.auth_token)
    end
  end
end

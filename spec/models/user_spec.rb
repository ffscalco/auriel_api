require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryGirl.build(:user)
  end

  context "validations" do
    describe "attributes" do
      it "must have an email" do
        expect(@user).to respond_to(:email)
      end

      it "must have a name" do
        expect(@user).to respond_to(:name)
      end

      it "must have a password" do
        expect(@user).to respond_to(:password)
      end

      it "must have a password_confirmation" do
        expect(@user).to respond_to(:password_confirmation)
      end
    end

    it "must be valid" do
      expect(@user).to be_valid
    end
  end
end

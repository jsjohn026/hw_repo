require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do

  subject(:user) {FactoryBot.build(:user, email: "beyonce@be.com", password: "beyonce") }
  
  describe "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6) }
  end
  
  # describe "associations" do
  #   it { should have_many(:??)}
  # end
  
  describe "instance methods" do
    describe "#is_password?" do
      let(:user) { create(:user) }

      it "confirms the presence of the correct password"
        expect.(user.is_password?("beyonce")).to be(true)
      it "returns false if password is incorrect"
        expect.(user.is_password?("jay-z")).to be(false)
    end

    describe "#reset_session_token" do
      it { should validate_uniqueness_of(:session_token) }
      
    end
  end

  describe "class methods" do
    describe "::find_by_credentials" do
      it #return user matching credentials provided
      it #does not return user if wrong credentials are provided

    end
  end


end

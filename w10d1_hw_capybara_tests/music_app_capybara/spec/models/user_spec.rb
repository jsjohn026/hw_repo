require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do

  subject(:user) {FactoryBot.build(:user, email: "", password: "") }
  
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
      # it #returns a new session token
    end

    describe "#reset_session_token" do
      
    end
  end

  describe "class methods" do
    describe "::find_by_credentials" do
      it #return user matching credentials provided
      it #does not return user if wrong credentials are provided

    end
  end


end

# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :email, :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: {message: "Password can't be blank"}
  validates :password, length: {minimum: 6, allow_nil: true}
  after_initialize :ensure_session_token

  attr_reader :password

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    return nil if user.nil?
    user.is_password?(password) ? user : nil
  end

  def reset_session_token!
    self.session_token = User.generate_session_token
    self.save!
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end
  

end

  # subject(:user) {User.new(email: "", password: "") }
  
  # describe "validations" do
  #   it { should validate_presence_of(:email) }
  #   it { should validate_presence_of(:password_digest) }
  #   it { should validate_length_of(:password).is_at_least(6) }
  # end
  
  # # describe "associations" do
  # #   it { should have_many(:??)}
  # # end
  
  # describe "class methods" do
  #   describe "::find_by_credentials" do
  #     it { should validate_presence_of(:email)}
  #   end
  # end
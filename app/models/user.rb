class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :profile, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :attendances, dependent: :destroy

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  after_create :generate_profile

  private

  def generate_profile
    # Using the bang method will make sure to raise an error if
    # creating the profile fails for whatever reason
    Profile.create!(email:, username: email.to_s.split('@')[0], user_id: id)
  end
end

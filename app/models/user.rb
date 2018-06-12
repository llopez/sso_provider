class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :access_grants

  before_create do
    self.authentication_token = Devise.friendly_token
  end

  # TODO: add token expiration to query
  def self.find_for_token_authentication(token)
    includes(:access_grants)
      .where(access_grants: { access_token: token })
  end
end

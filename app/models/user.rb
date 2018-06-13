class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :access_grants, dependent: :destroy

  # TODO: Remove if it is not needed, also remove migration
  # before_create do
  #   self.authentication_token = Devise.friendly_token
  # end

  def self.find_from_oauth_token(token)
    includes(:access_grants)
      .where(access_grants: { access_token: token })
      .where('access_grants.access_token_expires_at > ?', Time.current)
      .first
  end
end

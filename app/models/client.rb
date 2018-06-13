class Client < ApplicationRecord
  has_many :access_grants

  def self.authenticate(app_id, app_secret)
    where(app_id: app_id, app_secret: app_secret).first
  end
end

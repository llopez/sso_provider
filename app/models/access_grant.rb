class AccessGrant < ApplicationRecord
  belongs_to :user
  belongs_to :client

  before_create :generate_tokens

  def self.authenticate(code, application_id)
    AccessGrant.where('code = ? AND client_id = ?', code, application_id).first
  end

  def redirect_uri_for(redirect_uri)
    if redirect_uri.match?(/\?/)
      redirect_uri + "&code=#{code}&response_type=code&state=#{state}"
    else
      redirect_uri + "?code=#{code}&response_type=code&state=#{state}"
    end
  end

  def start_expiry_period!
    update_attribute(:access_token_expires_at, Time.current + Devise.timeout_in)
  end

  private

  def generate_tokens
    self.code = SecureRandom.hex(16)
    self.access_token = SecureRandom.hex(16)
    self.refresh_token = SecureRandom.hex(16)
  end
end

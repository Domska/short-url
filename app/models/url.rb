class Url < ApplicationRecord
  validates :original_url, presence: true, url: true
  VALID_S_URL_REGEX = /\A+[^\/\\ .]+\z/
  validates :short_url, length: { maximum: 6 }, uniqueness: true, format: { with: VALID_S_URL_REGEX }, if: :short_url?
  before_save :set_short_url
  
  def set_short_url
    self.short_url = SecureRandom.hex(6) unless self.short_url.present?
  end
end

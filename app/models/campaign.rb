class Campaign < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: false }
  has_many :campaign_sources, dependent: :destroy
  has_many :recipient_groups, through: :campaign_sources
end

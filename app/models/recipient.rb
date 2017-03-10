class Recipient < ApplicationRecord
  belongs_to :recipient_group
  validates_uniqueness_of :email_to, scope: :recipient_group_id
  validates_format_of :email_to, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end

class Message < ActiveRecord::Base
  validates :subject, :from, :to, :date, :payload_body, presence: true
end

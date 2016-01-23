class Message < ActiveRecord::Base
  validates :subject, :from, :to, :snippet, :date, :payload_body presence: true
end

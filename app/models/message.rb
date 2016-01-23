class Message < ActiveRecord::Base
  validates :message_id, :subject, :from, :to, :snippet, :date, presence: true
end

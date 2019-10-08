# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  message_id :integer          not null
#  duration   :float            not null
#  frame_rate :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Video < ApplicationRecord

  validates :frame_rate, :message_id, :duration, presence: true

  belongs_to :message

  def self.process_message(message)
    self.create!(message_id: message.id, duration: 1.09, frame_rate: "1/s")
  end
end

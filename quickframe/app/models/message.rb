# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  username   :string           not null
#  title      :string           not null
#  source     :string           not null
#  file_name  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ApplicationRecord

  validates :username, :title, :source, :file_name, presence: true
  after_save :process_message_to_video

  def process_message_to_video
    Video.process_message(self)
  end

  has_one :video, dependent: :destroy
end

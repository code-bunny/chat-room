class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chat_rooms, dependent: :destroy
  has_many :messages,   dependent: :destroy

  def name
    @name ||= email.split('@')[0]
  end
end

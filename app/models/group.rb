class Group < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :usergroups, dependent: :destroy
  has_many :users, through: :usergroups, dependent: :destroy
  has_many :events, dependent: :destroy
  validates :name, presence: true

  belongs_to :administrator, class_name: "User"
  before_save :generate_code

  private

  def generate_code
    self.code ||= SecureRandom.hex(3)
  end
end

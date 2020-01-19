class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader
  has_many :usergroups, dependent: :destroy
  has_many :votes
  validates :name, presence: true
  has_many :groups, through: :usergroups, dependent: :destroy
  has_many :events, through: :groups
  has_many :comments, dependent: :destroy
  has_many :owned_groups, class_name: 'Group', foreign_key: 'administrator_id', dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

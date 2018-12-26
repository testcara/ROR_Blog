class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  EMAIL_FORMAT = /\w+@\w+\.\w+/i
  validates :email, presence: true, format: { with: EMAIL_FORMAT}, uniqueness: true

  has_secure_password

  has_many :posts, dependent: :destroy

end

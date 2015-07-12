class User < ActiveRecord::Base
require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :user_courses
  has_many :courses, through: :user_courses

  # validates :username, uniqueness:true
  # validates :username, presence: true
  # validates :password_hash, presence: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end




end


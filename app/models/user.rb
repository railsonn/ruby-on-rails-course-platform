class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable


  def to_s
    email
  end

  
  def self.ransackable_attributes(auth_object = nil)
    %w[
      email
      sign_in_count
      created_at
    ]
  end

  def self.ransackable_associations(auth_object = nil)
    ["courses"]
  end

  def username
    self.email.split(/@/).first
  end

  has_many :courses
end

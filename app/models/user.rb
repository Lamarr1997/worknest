class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tasks
  has_many :bookings
  has_one_attached :photo

  # do they have many booking through the task
  # also do they have many booking as well.
end

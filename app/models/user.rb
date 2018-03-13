class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :questions, through: :user_answers
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end

class Question < ApplicationRecord
  belongs_to :game
  has_many :users, through: :user_answers
  has_many :answers
end

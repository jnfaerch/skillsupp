class Question < ApplicationRecord
  belongs_to :game
  has_many :users, through: :user_answers
  has_many :answers

  def next
    self.class.where("id > ?", id).first
  end


end

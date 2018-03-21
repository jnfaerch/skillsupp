class Game < ApplicationRecord
  belongs_to :competence
  has_many :questions

  def has_questions
    self.questions[0] ? true : false
  end
end

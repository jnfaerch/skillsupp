class UserAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  attr_accessor :chosen_answer_id  # needed for the question form to work
end

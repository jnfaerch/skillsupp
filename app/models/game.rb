class Game < ApplicationRecord
  belongs_to :competence
  has_many :questions
end

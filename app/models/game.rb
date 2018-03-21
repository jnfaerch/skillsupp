class Game < ApplicationRecord
  belongs_to :competence
  has_many :questions
  default_scope { order(id: :ASC) }
end

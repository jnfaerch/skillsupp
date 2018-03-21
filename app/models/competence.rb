class Competence < ApplicationRecord
  has_many :games
  belongs_to :color


  def image_name
    self.name.gsub(" ", "_").downcase
  end

  def games_with_questions
    self.games.select {|g| g.has_questions}
  end

end

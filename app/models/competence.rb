class Competence < ApplicationRecord
  has_many :games
  belongs_to :color

  def image_name
    self.name.gsub(" ", "_").downcase
  end

end

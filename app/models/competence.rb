class Competence < ApplicationRecord
  has_many :games

  def image_name
    self.name.gsub(" ", "_").downcase
  end

end

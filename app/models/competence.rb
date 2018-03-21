class Competence < ApplicationRecord
  has_many :games
  belongs_to :color
  default_scope { order(id: :ASC) }

  def image_name
    self.name.gsub(" ", "_").downcase
  end

end

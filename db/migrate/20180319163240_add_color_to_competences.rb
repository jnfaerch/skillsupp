class AddColorToCompetences < ActiveRecord::Migration[5.1]
  def change
    add_reference :competences, :color, foreign_key: true
  end
end

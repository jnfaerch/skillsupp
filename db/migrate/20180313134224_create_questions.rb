class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :content
      t.text :feedback
      t.string :type
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end

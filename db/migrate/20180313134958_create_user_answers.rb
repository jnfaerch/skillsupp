class CreateUserAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :user_answers do |t|
      t.boolean :correct
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end

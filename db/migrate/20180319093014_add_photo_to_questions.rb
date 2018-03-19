class AddPhotoToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :photo, :text
  end
end

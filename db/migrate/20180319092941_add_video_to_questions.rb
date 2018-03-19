class AddVideoToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :video, :text
  end
end

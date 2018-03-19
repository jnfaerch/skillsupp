class AddIconToColors < ActiveRecord::Migration[5.1]
  def change
    add_column :colors, :icon, :string
  end
end

class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :description # Mô tả
      t.string :priority    # Sự ưu tiên
      t.timestamps null: false
    end
  end
end

class CreateBooks < ActiveRecord::Migration[8.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.belongs_to :author

      t.timestamps
    end
  end
end

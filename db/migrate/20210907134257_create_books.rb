class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :description
      t.date :release_date

      t.timestamps
    end
  end
end

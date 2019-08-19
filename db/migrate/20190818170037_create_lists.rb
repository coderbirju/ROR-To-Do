class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.text :info
      t.string :status
      t.date :date
      t.timestamps
    end
  end
end

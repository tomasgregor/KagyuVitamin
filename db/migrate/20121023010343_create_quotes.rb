class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :quote
      t.text :teacher
      t.text :posted_by

      t.timestamps
    end
  end
end

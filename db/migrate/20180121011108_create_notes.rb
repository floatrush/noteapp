class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :book
      t.integer :chapter
      t.integer :start_verse
      t.integer :end_verse
      t.text :note_text

      t.timestamps
    end
  end
end

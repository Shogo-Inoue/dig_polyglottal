class CreateNoteApps < ActiveRecord::Migration[7.1]
  def change
    create_table :note_apps do |t|
      t.text :noteText

      t.timestamps
    end
  end
end

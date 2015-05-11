class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.string  :title,  null: false
      t.string  :author, null: false, default: "Unknown"
      t.integer :year,   null: true
      t.text    :text,   null: false
      t.timestamps
    end
  end
end

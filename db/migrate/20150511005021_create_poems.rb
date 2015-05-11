class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.string :title,   null: false
      t.text   :text,    null: false
      t.string :prompts, null: false, default: [], array: true
      t.timestamps
    end
  end
end

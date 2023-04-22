class CreateLetters < ActiveRecord::Migration[6.1]
  def change
    create_table :letters do |t|
      t.text :caption
      t.integer :user_id
      t.timestamps
    end
  end
end

class CreateLetterComments < ActiveRecord::Migration[6.1]
  def change
    create_table :letter_comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :letter_id
      t.timestamps
    end
  end
end

class CreateLives < ActiveRecord::Migration[6.1]
  def change
    create_table :lives do |t|

      t.timestamps
    end
  end
end

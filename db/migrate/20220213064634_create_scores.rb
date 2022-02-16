class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.string :username
      t.integer :score
      t.belongs_to :user, foregin_key: true

      t.timestamps
    end
  end
end

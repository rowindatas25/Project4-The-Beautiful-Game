class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :team
      t.string :flag
      t.string :founded
      t.string :moment_title
      t.string :moments
      t.integer :user_id

      t.timestamps
    end
  end
end

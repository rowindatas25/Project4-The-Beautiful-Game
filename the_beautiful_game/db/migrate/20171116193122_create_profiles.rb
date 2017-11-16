class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :team
      t.string :team_id
      t.string :flag
      t.string :founded
      t.string :moments

      t.timestamps
    end
  end
end

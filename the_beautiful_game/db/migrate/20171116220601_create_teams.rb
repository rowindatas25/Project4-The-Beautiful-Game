class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :team
      t.string :flag
      t.string :founded
      t.string :moments

      t.timestamps
    end
  end
end

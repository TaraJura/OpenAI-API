class CreateAccount < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :accountId
      t.string :puuid
      t.string :name
      t.string :profileIconId
      t.string :summonerLevel

      t.timestamps
    end
  end
end

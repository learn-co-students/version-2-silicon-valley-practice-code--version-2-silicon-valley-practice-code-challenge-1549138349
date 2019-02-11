class CreateFundingRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :funding_rounds do |t|
      t.integer :startup_id
      t.integer :venture_capitalist_id
      t.string :type_s
      t.integer :investments
    end
  end
end

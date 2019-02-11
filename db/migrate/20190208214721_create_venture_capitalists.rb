class CreateVentureCapitalists < ActiveRecord::Migration[5.2]
  def change
    create_table :venture_capitalists do |t|
      t.string :name
      t.integer :worth
    end
  end
end

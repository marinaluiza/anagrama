class CreateComparacaos < ActiveRecord::Migration
  def change
    create_table :comparacaos do |t|
      t.string :string1
      t.string :string2
      t.boolean :anagrama

      t.timestamps null: false
    end
  end
end

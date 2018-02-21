class CreateUnicorns < ActiveRecord::Migration[5.1]
  def change
    create_table :unicorns do |t|
      t.string :name
      t.string :color
      t.string :horn_type
      t.integer :age

      t.timestamps
    end
  end
end

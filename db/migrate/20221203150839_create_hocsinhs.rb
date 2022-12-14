class CreateHocsinhs < ActiveRecord::Migration[7.0]
  def change
    create_table :hocsinhs do |t|
      t.integer :ids
      t.string :name
      t.integer :age
      t.string :address
      t.string :class

      t.timestamps
    end
  end
end

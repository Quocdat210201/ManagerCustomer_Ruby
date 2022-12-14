class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.integer :stt
      t.string :ten
      t.string :gioitinh
      t.string :diachi

      t.timestamps
    end
  end
end

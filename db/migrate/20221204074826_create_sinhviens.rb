class CreateSinhviens < ActiveRecord::Migration[7.0]
  def change
    create_table :sinhviens do |t|
      t.integer :stt
      t.string :ten
      t.string :lop
      t.integer :gioitinh
      t.string :diachi

      t.timestamps
    end
  end
end

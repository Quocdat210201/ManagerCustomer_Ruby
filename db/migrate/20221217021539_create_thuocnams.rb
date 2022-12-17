class CreateThuocnams < ActiveRecord::Migration[7.0]
  def change
    create_table :thuocnams do |t|
      t.integer :stt
      t.string :ten
      t.integer :dacdiem
      t.string :maula
      t.string :duoctinh
      t.string :luuysudung
      t.string :noitrong

      t.timestamps
    end
  end
end

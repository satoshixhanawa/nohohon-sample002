class CreatePowers < ActiveRecord::Migration[7.0]
  def change
    create_table :powers do |t|
      t.integer :e1
      t.integer :e2
      t.integer :e3
      t.integer :e4
      t.integer :e5
      t.integer :e6
      t.integer :e7
      t.integer :e8
      t.integer :p1
      t.integer :p2
      t.integer :p3
      t.integer :p4
      t.integer :p5
      t.integer :p6
      t.integer :p7
      t.integer :p8

      t.timestamps
    end
  end
end

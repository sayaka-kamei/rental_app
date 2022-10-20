class CreateRents < ActiveRecord::Migration[6.0]
  def change
    create_table :rents do |t|
      t.string :name
      t.string :price
      t.string :address
      t.string :age
      t.text :remarks
      t.string :route1
      t.string :station1
      t.string :time1
      t.string :route2
      t.string :station2
      t.string :time2
    end
  end
end

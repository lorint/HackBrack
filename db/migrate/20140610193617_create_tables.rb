class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :floor
      t.integer :num
      t.string :descrip

      t.timestamps
    end
  end
end

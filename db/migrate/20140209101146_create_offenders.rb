class CreateOffenders < ActiveRecord::Migration
  def change
    create_table :offenders do |t|
      t.string :name
      t.string :age

      t.timestamps
    end
  end
end

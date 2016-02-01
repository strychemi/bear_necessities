class CreateBears < ActiveRecord::Migration
  def change
    create_table :bears do |t|
      t.integer :width
      t.integer :height

      t.timestamps null: false
    end
  end
end

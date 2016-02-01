class AddNameToBears < ActiveRecord::Migration
  def change
    add_column :bears, :name, :string
  end
end

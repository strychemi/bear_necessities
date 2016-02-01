class AddDescriptionToBears < ActiveRecord::Migration
  def change
    add_column :bears, :description, :string
  end
end

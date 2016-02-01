class ChangeDescritionColumnToText < ActiveRecord::Migration
  def change
    change_column :bears, :description, :text
  end
end

class AddGroupAndPeriodToElement < ActiveRecord::Migration
  def change
    add_column :elements, :period, :integer
    add_column :elements, :group, :string
  end
end

class AddAtomicNumberToElement < ActiveRecord::Migration
  def change
    add_column :elements, :atomic_number, :integer
  end
end

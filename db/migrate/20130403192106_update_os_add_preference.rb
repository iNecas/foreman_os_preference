class UpdateOsAddPreference < ActiveRecord::Migration
  def up
    add_column :operatingsystems, :preference, :integer, nil: false, default: 1
  end

  def down
    remove_column :operatingsystems, :preference, :integer
  end
end

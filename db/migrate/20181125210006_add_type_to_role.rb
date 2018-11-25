class AddTypeToRole < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :type, :integer
  end
end

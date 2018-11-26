class AddTypeToRole < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :role_type, :integer
  end
end

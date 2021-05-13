class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :u_id, :string
   
  end
end

class ChangeToUid < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :u_id, :uid
  end
end

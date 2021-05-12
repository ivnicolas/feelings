class UpdateUserFeelings < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_feelings, :online_interation
    remove_column :user_feelings, :in_person_interaction
    rename_column :user_feelings, :social_interation, :social_interaction
    rename_column :user_feelings, :freash_air, :fresh_air
    add_column :user_feelings, :interaction_type, :string


  end
end

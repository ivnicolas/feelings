class CreateUserFeelings < ActiveRecord::Migration[6.1]
  def change
    create_table :user_feelings do |t|
      
      t.integer :user_id 
      t.integer :feeling_id 
      t.boolean :drink_water
      t.integer :water_intake 
      t.datetime :time_of_last_meal 
      t.text :what_did_you_eat 
      t.boolean :moment_of_quiet 
      t.integer :length_of_quiet
      t.boolean :freash_air 
      t.integer :time_online 
      t.boolean :social_interation
      t.boolean :online_interation
      t.boolean :in_person_interaction
      t.integer :interaction_duration
      t.integer :interaction_count 
      t.boolean :body_movement 
      t.boolean :body_movement_type 
      t.boolean :conflict 
      t.boolean :resolved_conflict 

      t.timestamps

    end
  end
end

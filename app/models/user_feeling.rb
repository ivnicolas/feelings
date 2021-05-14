class UserFeeling < ActiveRecord::Base
    belongs_to :user 
    belongs_to :feeling

    # validates :user_id, :feeling_id, :drink_water, presence: true 
    validates :user_id, :feeling_id, :time_of_last_meal, :what_did_you_eat, :time_online , presence: true 
     validates_inclusion_of  :drink_water, :moment_of_quiet,  :fresh_air, :social_interaction, :body_movement,
     :conflict, in: [true, false]


    scope :todays_forecast, -> {where(created_at: Time.now.midnight..(Time.now.midnight + 1.day )).group(:feeling_id).count.max}
   

    def self.tf_feeling
        Feeling.find_by_id(UserFeeling.todays_forecast[0]).name
    end 

    def self.tf_count
        UserFeeling.todays_forecast[1]
    end 

    def self.todays_count 
    end 

    def self.date_format
    end
end

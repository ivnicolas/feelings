class UserFeeling < ActiveRecord::Base
    belongs_to :user 
    belongs_to :feeling

end

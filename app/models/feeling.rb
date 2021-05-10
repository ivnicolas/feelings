class Feeling < ActiveRecord::Base
    has_many :user_feelings
    has_many :users , through: :user_feelings 
  

end

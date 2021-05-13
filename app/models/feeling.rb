class Feeling < ActiveRecord::Base
    has_many :user_feelings
    has_many :users , through: :user_feelings 

    validates :name,:description, presence: true 
    validates :name, uniqueness: true
  

end

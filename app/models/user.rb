class User < ActiveRecord::Base
    has_many :user_feelings
    has_many :feelings, through: :user_feelings

    validates :email, presence: true   
    validates :name, presence: true 
    validates :email, uniqueness: true
    # validates :email, presence: true , message: "You must enter an email."
    # validates :name, presence: true , message: "You must enter you're name."
    # validates :email, uniqueness: true , message: "This email already exsist in out database. Please sign in or continue with a new email. "
    

    has_secure_password 
end

class User < ActiveRecord::Base


    has_secure_password 

    has_many :user_feelings
    has_many :feelings, through: :user_feelings

    validates :email, :name, presence: true   
    validates :email, uniqueness: true 

    # validates :email, presence: true , message: "You must enter an email."
    # validates :name, presence: true , message: "You must enter you're name."
    # validates :email, uniqueness: true , message: "This email already exsist in out database. Please sign in or continue with a new email. "
    
    def self.build_from_omniauth(auth)
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.name = auth['info']['first_name'] 
            u.email = auth['info']['email'] 
            u.password = SecureRandom.hex(16)
        end 

    end 
end


# dont code, pseudo code
# challenge / task: create a button on feelings index that will sort feelings alphabetically by name

# step 1 : create a link on the index page for sorting
    # step 1a: define the route in routes file
# step 2 : set up controller action to sort feelings ## the true challenge
# step 3 : display feelings on view page


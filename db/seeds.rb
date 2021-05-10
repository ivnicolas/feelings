# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserFeeling.destroy_all
User.destroy_all
Feeling.destroy_all

# shade=["Full Sun","Partial Sun","Partial Shade","Full Shade"]
# size=["Small","Medium","Large"]
# water=["Once a week","Multiple Times a Weeks","As Needed"]
# environment= ["Dry","Humid","Moderate"]
# feelings= ["Aloe Vera","Yucca","Spider Plant","Peace Lily","English Ivy",
# "Rubber Plant","Philodendron","Cactus","Snake Plant","Dieffenbachia","Fiddle Leaf Fig",
# "Chinese Money Plant","African Violet"]
# watered=[true,false]
# list=["My Plants","Plants I Want","Plants for Friends"]

zipcode=[20176, 21042, 80210, 11216, 80911, 14617, 03051, 01602, 04106, 66614,]


10.times do

    User.create(
    name: Faker::Name.name ,
    email: Faker::Internet.unique.email ,
    age: rand(10..100),
    zipcode: zipcode.sample, 
    password: "password"
    )

end

Feeling.create(
    name: "Overwhelmed", 
    description: "Emotional overwhelm occurs when the intensity of your feelings outmatches your ability to manage them.
    It can affect your ability to think and act rationally. It could also prevent you from performing daily tasks.Emotional
    overwhelm may be caused by stress, traumatic life experiences, relationship issues, and much more."
    )

Feeling.create(
    name: "Content",
    description: "Contentment is an emotional state of satisfaction that can be seen as a mental state, 
    maybe drawn from being at ease in one's situation, body and mind. Colloquially speaking, contentment could be a state 
    of having accepted one's situation and is a milder and more tentative form of happiness"
    )

Feeling.create(
    name: "Hopeful" ,
    description: "The expectation that one will have positive experiences or that a potentially threatening or
     negative situation will not materialize or will ultimately result in a favorable state of affairs. A feeling 
     of optimism and anticipation about a positive future."
    )

Feeling.create(
    name: "Grateful" ,
    description: "A feeling of thankfulness, for something specific or simply all-encompassing, 
    often accompanied by humility and even reverence."
    )

Feeling.create(
    name: "Apathetic" ,
    description: "Lack of motivation or goal-directed behavior and indifference to one’s surroundings." 
    )

UserFeeling.create(
    user: User.last ,
    feeling: Feeling.first ,
    drink_water: true ,
    water_intake: 3 , 
    moment_of_quiet: false ,
    freash_air: false , 
    social_interation: true, 
    conflict: true , 
    resolved_conflict: false 
    )

    puts "Stiff Where"
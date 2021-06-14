
UserFeeling.destroy_all
User.destroy_all
Feeling.destroy_all


zipcode=[20176, 21042, 80210, 11216, 80911, 14617, 03051, 01602, 04106, 66614,]


10.times do

    User.create(
    name: Faker::Name.name ,
    email: Faker::Internet.unique.email ,
    age: rand(10..100),
    zipcode: zipcode.sample, 
    password: "password",
    goal: "To hold myself accountable to my wellness goals" ,
    mantra: "What is meant for me will be" ,
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
    fresh_air: false , 
    social_interaction: true, 
    conflict: true , 
    body_movement: true,
    resolved_conflict: false ,
    time_online: 4,
    time_of_last_meal: "2021-05-14 00:11:00.000000000 +0000", 
    what_did_you_eat: "cookies"
    )

    puts "Stiff Where"

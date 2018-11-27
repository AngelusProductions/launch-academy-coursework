
user_seeds = [
  { first_name: "Brianna", last_name: "Kincart", email: "bk@launch.com"},
  { first_name: "Nick", last_name: "Alberts", email: "na@launch.com"},
  { first_name: "Casi", last_name: "Newell", email: "cn@launch.com"},
  { first_name: "Dan", last_name: "Pickett", email: "dp@launch.com"},
  { first_name: "Alex", last_name: "Schwartz", email: "as@launch.com"}
]

project_seeds = [
  { name: "Robot Rebellion", description: "We need to upload a virus to the mothership before they wipe us out"},
  { name: "Occupy Mars", description: "This planet is gross, we need to start fresh"},
  { name: "Save the Mermaids", description: "Overfishing of the mermaid population is leading to ecosystem collapses"},
  { name: "Unicorns Be Free", description: "We need to equip all unicorns with wings so that they may fly to better pastures"},
  { name: "Interspecies Breeding", description: "We need to mate with the aliens so our kids can have superpowers"}
]

pursuit_seeds = [
  { user_id: 1, project_id: 3},
  { user_id: 1, project_id: 4},
  { user_id: 2, project_id: 4},
  { user_id: 2, project_id: 5},
  { user_id: 3, project_id: 1},
  { user_id: 4, project_id: 2},
  { user_id: 5, project_id: 1}
]

tasks_seeds = [
  { name: "Build an army", description: "Recruit the oppressed", due_date: Date.parse("Oct 5 2018"), user_id: 3, project_id: 1},
  { name: "Build an army", description: "Recruit the oppressed", due_date: Date.parse("Oct 5 2018"), user_id: 5, project_id: 1},
  { name: "March on the mothership", description: "The time has come", due_date: Date.parse("Oct 6 2018"), user_id: 5, project_id: 1},
  { name: "Recruit Elon Musk", description: "Give him cookies", due_date: Date.parse("Nov 23 2018"), user_id: 4, project_id: 2},
  { name: "Launch to space", description: "One giant step for Dankind", due_date: Date.parse("Nov 24 2018"), user_id: 4, project_id: 2},
  { name: "Arrest the fishermen", description: "They're murderers", due_date: Date.parse("May 11 2019"), user_id: 1, project_id: 3},
  { name: "Dissect Pegasus", description: "Rip wings off of mythical beast", due_date: Date.parse("Dec 25 2020"), user_id: 1, project_id: 4},
  { name: "Stitch on wings", description: "Fly, fly, my pretty ponies", due_date: Date.parse("Dec 31 2020"), user_id: 2, project_id: 4},
  { name: "Have relations with ET", description: "Try putting a wig on him", due_date: Date.parse("Mar 7 2027"), user_id: 2, project_id: 5},
  { name: "Have ET baby", description: "Good luck with 27 month pregnancy", due_date: Date.parse("Jun 7 2029"), user_id: 2, project_id: 5}
]

user_seeds.each do |seed|
  User.create(seed)
end

project_seeds.each do |seed|
  Project.create(seed)
end

pursuit_seeds.each do |seed|
  Pursuit.create(seed)
end

tasks_seeds.each do |seed|
  Task.create(seed)
end

party_seeds = [
  { name: 'Penguin Party', location: 'North Pole', description: 'We gonna chill'},
  { name: 'Elephant Party', location: 'Sahara Desert', description: 'Drop like it\'s hot'},
  { name: 'Squid Party', location: 'Marianas Trench', description: 'What happens down there, stays down there'},
  { name: 'Dragon Party', location: 'Medieval Europe', description: 'It\'s gon\' be fire'},
  { name: 'Squirrel Party', location: 'Treetops', description: 'It\'ll be nuts'},
  { name: 'Donkey Party', location: 'Himalayas', description: 'Lot\'s of ass shakin\''}
]

party_seeds.each do |seed|
  Party.create(seed)
end

friends_seeds = [
  { first_name: 'Rick', last_name: 'Sanchez'},
  { first_name: 'Morty', last_name: 'Smith'},
  { first_name: 'Summer', last_name: 'Smith'},
  { first_name: 'Beth', last_name: 'Smith'},
  { first_name: 'Jerry', last_name: 'Smith'},
  { first_name: 'Mister', last_name: 'Poopybutthole'},
  { first_name: 'Bird', last_name: 'Person'},
  { first_name: 'Mister', last_name: 'Meseeks'}
]

friends_seeds.each do |seed|
  Friend.create(seed)
end

invites_seeds = [
  { party_id: 3, friend_id: 5},
  { party_id: 2, friend_id: 4},
  { party_id: 1, friend_id: 6},
  { party_id: 4, friend_id: 2},
  { party_id: 5, friend_id: 3},
  { party_id: 6, friend_id: 7},
  { party_id: 4, friend_id: 8}
]

invites_seeds.each do |seed|
  Invite.create(seed)
end

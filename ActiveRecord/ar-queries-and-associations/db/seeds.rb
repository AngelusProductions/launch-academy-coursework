
recipes_seed = [
  {title: "Beans"},
  {title: "Human Flesh"},
  {title: "Terducken"},
  {title: "Lollipop"},
  {title: "Chicken Wings"},
  {title: "Ham"},
  {title: "Lasagna"},
  {title: "Cow Tail"}
]

recipes_seed.each do |seed|
  Recipe.create(seed)
end

comments_seed = [
  {body: "this is shit", recipe_id: 1},
  {body: "mmm.. yummy", recipe_id: 6},
  {body: "made me poo so hard", recipe_id: 9},
  {body: "God awful", recipe_id: 2},
  {body: "looked good at least", recipe_id: 1},
  {body: "best thing evah", recipe_id: 3},
  {body: "gave it to my dog", recipe_id: 4},
  {body: "this is not food", recipe_id: 8}
]

comments_seed.each do |seed|
  Comment.create(seed)
end

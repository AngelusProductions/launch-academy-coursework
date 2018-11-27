def greet (name, language = nil)
  greetings = ["Hola", "Ciao", "Bonjour", "Hi"]
  if language == "english"
    puts "#{greetings[0]} #{name}!"
  elsif language == "italian"
    puts "#{greetings[1]} #{name}!"
  elsif language == "french"
    puts "#{greetings[2]} #{name}!"
  else
    puts "#{greetings[3]} #{name}!"
  end
end

greet("Corey")

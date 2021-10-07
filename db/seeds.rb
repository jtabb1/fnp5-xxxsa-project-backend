puts "🔥 Destroying starter types..."
StarterType.destroy.all

puts "🔥 Destroying starter todos..."
StarterTodo.destroy.all

puts "🌱 Seeding starter types..."
s_typex01 = StarterType.create!(type_name: 'coding')
s_typex02 = StarterType.create!(type_name: 'eating')
s_typex03 = StarterType.create!(type_name: 'misc.')

puts "🌱 Seeding starter todos..."
StarterTodo.create!(type_id: s_typex01.id, todo_name: "complete feature a on project")
StarterTodo.create!(type_id: s_typex01.id, todo_name: "complete feature bb on project")
StarterTodo.create!(type_id: s_typex01.id, todo_name: "complete feature ccc on project")
StarterTodo.create!(type_id: s_typex01.id, todo_name: "complete feature dddd on project")
StarterTodo.create!(type_id: s_typex02.id, todo_name: "go to the store")
StarterTodo.create!(type_id: s_typex02.id, todo_name: "wash dishes")
StarterTodo.create!(type_id: s_typex02.id, todo_name: "take out the trash")
StarterTodo.create!(type_id: s_typex03.id, todo_name: "complete morning routine")

puts "✅ Done seeding!"

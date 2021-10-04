# puts "🌱 Seeding users..."
# userx02 = User.create!(username: 'CommonTodos')
 
puts "🌱 Seeding types..."
typex01 = Type.create!(type_name: 'coding')
typex02 = Type.create!(type_name: 'eating')
typex03 = Type.create!(type_name: 'misc.')

# puts "🌱 Seeding todos..."
# Todo.create!(user_id: userx02.id, type_id: typex01.id, todo_name: "complete feature a on project")
# Todo.create!(user_id: userx02.id, type_id: typex01.id, todo_name: "complete feature bb on project")
# Todo.create!(user_id: userx02.id, type_id: typex01.id, todo_name: "complete feature ccc on project")
# Todo.create!(user_id: userx02.id, type_id: typex01.id, todo_name: "complete feature dddd on project")
# Todo.create!(user_id: userx02.id, type_id: typex02.id, todo_name: "go to the store")
# Todo.create!(user_id: userx02.id, type_id: typex02.id, todo_name: "wash dishes")
# Todo.create!(user_id: userx02.id, type_id: typex02.id, todo_name: "take out the trash")
# Todo.create!(user_id: userx02.id, type_id: typex03.id, todo_name: "complete morning routine")

puts "✅ Done seeding!"

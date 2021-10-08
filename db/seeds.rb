puts "🔥 Destroying starter todos..."
StarterTypedTodo.destroy_all

puts "🔥 Destroying todos..."
Todo.destroy_all

puts "🔥 Destroying types..."
Type.destroy_all

puts "🔥 Destroying users..."
User.destroy_all

puts "🌱 Seeding starter typed todos..."
StarterTypedTodo.create!(type_name: "coding", to_display: "complete feature a on project (coding)", todo_name: "complete feature a on project")
StarterTypedTodo.create!(type_name: "coding", to_display: "complete feature bb on project (coding)", todo_name: "complete feature bb on project")
StarterTypedTodo.create!(type_name: "coding", to_display: "complete feature ccc on project (coding)", todo_name: "complete feature ccc on project")
StarterTypedTodo.create!(type_name: "coding", to_display: "complete feature dddd on project (coding)", todo_name: "complete feature dddd on project")
StarterTypedTodo.create!(type_name: "eating", to_display: "go to the store (eating)", todo_name: "go to the store")
StarterTypedTodo.create!(type_name: "eating", to_display: "wash dishes (eating)", todo_name: "wash dishes")
StarterTypedTodo.create!(type_name: "eating", to_display: "take out the trash (eating)", todo_name: "take out the trash")
StarterTypedTodo.create!(type_name: "misc.", to_display: "complete morning routine (misc.)", todo_name: "complete morning routine")

# puts "🌱 Seeding users..."
# userx01 = User.create!(username: 'FirstUser', password_digest: "1")

# puts "🌱 Seeding types..."
# typex01 = Type.create!(user_id: userx01.id, type_name: 'any')

puts "✅ Done seeding!"

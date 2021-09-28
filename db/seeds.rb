puts "🌱 Seeding employees..."
ee01 = Employee.create!(name: 'Stella Jaramillo', public_id: 1001)
ee02 = Employee.create!(name: 'Jago North', public_id: 1002)
ee03 = Employee.create!(name: 'Selin Rigby', public_id: 1003)
ee04 = Employee.create!(name: 'Opal Zamora', public_id: 1004)
ee05 = Employee.create!(name: 'Dillon Walker', public_id: 1005)
ee06 = Employee.create!(name: 'Mohsin Browne', public_id: 1006)
ee07 = Employee.create!(name: 'Katelin Hodgson', public_id: 1007)
ee08 = Employee.create!(name: 'Isobel Beaumont', public_id: 1008)
ee09 = Employee.create!(name: 'Addison Kline', public_id: 1009)
ee10 = Employee.create!(name: 'Pheobe Hayden', public_id: 1010)
 
puts "🌱 Seeding tasks..."
ta01 = Task.create!(task_name: 'Antigen Development', public_id: 1001001)
ta02 = Task.create!(task_name: 'Harvesting', public_id: 1002001)
ta03 = Task.create!(task_name: 'Purification', public_id: 1003001)

puts "🌱 Seeding trainings..."
Training.create!(employee_id: ee01.id, task_id: ta01.id, trainer: ee01.id, initial_production_rate: 543, error_rate_in_english: 'good', initial_error_rate: 7200)
Training.create!(employee_id: ee01.id, task_id: ta02.id, trainer: ee01.id, initial_production_rate: 441, error_rate_in_english: 'good', initial_error_rate: 8300)
Training.create!(employee_id: ee01.id, task_id: ta03.id, trainer: ee01.id, initial_production_rate: 642, error_rate_in_english: 'good', initial_error_rate: 7500)
Training.create!(employee_id: ee02.id, task_id: ta01.id, trainer: ee01.id, initial_production_rate: 302, error_rate_in_english: 'good', initial_error_rate: 8500)
Training.create!(employee_id: ee03.id, task_id: ta01.id, trainer: ee01.id, initial_production_rate: 330, error_rate_in_english: 'good', initial_error_rate: 9800)
Training.create!(employee_id: ee04.id, task_id: ta01.id, trainer: ee01.id, initial_production_rate: 350, error_rate_in_english: 'needs improvement', initial_error_rate: 10200)
Training.create!(employee_id: ee05.id, task_id: ta02.id, trainer: ee01.id, initial_production_rate: 340, error_rate_in_english: 'needs improvement', initial_error_rate: 11000)
Training.create!(employee_id: ee06.id, task_id: ta02.id, trainer: ee01.id, initial_production_rate: 290, error_rate_in_english: 'good', initial_error_rate: 9700)
Training.create!(employee_id: ee07.id, task_id: ta02.id, trainer: ee01.id, initial_production_rate: 340, error_rate_in_english: 'good', initial_error_rate: 7700)
Training.create!(employee_id: ee08.id, task_id: ta03.id, trainer: ee01.id, initial_production_rate: 311, error_rate_in_english: 'good', initial_error_rate: 8100)
Training.create!(employee_id: ee09.id, task_id: ta03.id, trainer: ee01.id, initial_production_rate: 305, error_rate_in_english: 'needs improvement', initial_error_rate: 10600)
Training.create!(employee_id: ee10.id, task_id: ta03.id, trainer: ee01.id, initial_production_rate: 320, error_rate_in_english: 'good', initial_error_rate: 7800)

puts "✅ Done seeding!"
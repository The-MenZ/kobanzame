# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Material.create([
  {name: "アクリル(透明) 1mm", description: "アクリル(透明) 1mm", enable_cut: true, print_type: :unavailable, price: 800, provide_status: 10, active: true},
  {name: "アクリル(透明) 2mm", description: "アクリル(透明) 2mm", enable_cut: true, print_type: :single_color, price: 800, provide_status: 10, active: true},
  {name: "アクリル(透明) 3mm", description: "アクリル(透明) 3mm", enable_cut: true, print_type: :single_color, price: 800, provide_status: 10, active: true},
  {name: "アクリル(透明) 4mm", description: "アクリル(透明) 4mm", enable_cut: true, print_type: :single_color, price: 800, provide_status: 10, active: true},
  {name: "アクリル(透明) 5mm", description: "アクリル(透明) 5mm", enable_cut: true, print_type: :single_color, price: 800, provide_status: 10, active: true},
  {name: "アガチス 1mm", description: "アガチス 1mm", enable_cut: true, print_type: :unavailable, price: 500, provide_status: 10, active: true},
  {name: "アガチス 2mm", description: "アガチス 2mm", enable_cut: true, print_type: :tone_color, price: 500, provide_status: 10, active: true},
  {name: "アガチス 3mm", description: "アガチス 3mm", enable_cut: true, print_type: :tone_color, price: 500, provide_status: 10, active: true},
  {name: "アガチス 4mm", description: "アガチス 4mm", enable_cut: true, print_type: :tone_color, price: 500, provide_status: 10, active: true},
  {name: "アガチス 5mm", description: "アガチス 5mm", enable_cut: true, print_type: :tone_color, price: 500, provide_status: 10, active: true},
  {name: "コルクコースター（四角）", description: "コルク製のコースター", enable_cut: false, print_type: :single_color, price: 200, provide_status: 10, active: true},
  {name: "コルクコースター（丸）", description: "コルク製のコースター", enable_cut: false, print_type: :single_color, price: 200, provide_status: 10, active: true},
])

User.create(
  name: "hogehoge",
  email: "hoge@example.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  admin: true
)

99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(
    name: name,
    email: email,
    password: password,
    password_confirmation: password
  )
end


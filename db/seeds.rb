# メインのサンプルユーザーを１人を作成する
User.create!(name: "Example User",
             email: "examples@railstutorial.org",
             password: "foobar",
             password_confirmation: "foobar")

# 追加のユーザーをまとめて作成する
99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               admin: ture)
end
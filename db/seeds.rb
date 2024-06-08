EMAIL = "test@example.com"
PASSWORD = "password"

User.destroy_all
Post.destroy_all

user1 = User.create!(email: "yamazaki@example.com", password: "password")


user2 = User.create!(email: "yasuda@example.com", password: "password")
user3 = User.create!(email: "yamauchi@example.com", password: "password")

post1 = user2.posts.create!(content: "喉ならルルアタックEX", amazonurl: "http://urx.blue/wucL")
post2 = user1.posts.create!(content: "熱ならルルアタックFX", amazonurl: "http://urx.blue/TatU")
post3 = user3.posts.create!(content: "咳なら赤いパッケージのストナ", amazonurl: "http://urx.blue/Vxbj")
post4 = user3.posts.create!(content: "鼻水ならルルアタックNX", amazonurl: "http://urx.blue/RlNX")
post5 = user1.posts.create!(content: "頭痛ならリングルアイビー200", amazonurl: "http://urx.blue/Vgnu")

post1.likes.create!(user_id: user1.id)
post1.likes.create!(user_id: user3.id)
post2.likes.create!(user_id: user2.id)
post3.likes.create!(user_id: user1.id)
post4.likes.create!(user_id: user1.id)
post4.likes.create!(user_id: user2.id)
post5.likes.create!(user_id: user3.id)

User.create!(email: EMAIL, password: PASSWORD)

puts "初期データの投入に成功しました！"




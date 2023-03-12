# Create User
5.times.each do |i|
  u = User.find_or_create_by(name: "Test_User_#{i}", email: "test_user#{i}@email.com")
  u.update password: "123456"
end

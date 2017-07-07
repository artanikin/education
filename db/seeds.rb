# Create Admin user
User.create(
  first_name: "Admin",
  last_name: "System",
  email: "admin@mail.com",
  password: "123",
  password_confirmation: "123",
  role: "admin"
)

# Create Admin user
User.create([
  {
    first_name: "Admin", last_name: "Administrator", email: "admin@mail.com",
    password: "123", password_confirmation: "123", role: "admin"
  },
  {
    first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,
    email: "user@mail.com", password: "123", password_confirmation: "123"
  }
])

# Create Users
user_data_generator = lambda do
  return {
    first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email, password: '123', password_confirmation: '123'
  }
end
User.create((0..10).map { user_data_generator.call })

# Create Groups
Group.create([{ title: "Group A" }, { title: "Group B" }])

# Add users to groups
GroupsUser.create([
  { group_id: 1, user_id: 2 },
  { group_id: 1, user_id: 3 },
  { group_id: 2, user_id: 4 },
  { group_id: 2, user_id: 5 },
  { group_id: 2, user_id: 6 }
])

# Create tests
test_data_generator = lambda do
  return { title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph }
end
Test.create((0..10).map { test_data_generator.call })

# Create courses
Course.create([
  { title: Faker::Educator.course, description: Faker::Lorem.paragraph },
  { title: Faker::Educator.course, description: Faker::Lorem.paragraph }
])

# Add tests for course
EducationMaterial.create([
  { course_id: 1, material_id: 1, material_type: "Test" },
  { course_id: 1, material_id: 2, material_type: "Test" },
  { course_id: 2, material_id: 3, material_type: "Test" },
  { course_id: 2, material_id: 4, material_type: "Test" },
  { course_id: 2, material_id: 5, material_type: "Test" }
])

# Create EducationProgram
EducationProgram.create([
  { title: Faker::Team.name, description: Faker::Lorem.paragraph },
  { title: Faker::Team.name, description: Faker::Lorem.paragraph }
])

# Add students to EducationProgram
EducationProgramStudent.create([
  { education_program_id: 1, student_id: 1, student_type: "Group" },
  { education_program_id: 1, student_id: 2, student_type: "User" },
  { education_program_id: 1, student_id: 5, student_type: "User" },
  { education_program_id: 2, student_id: 2, student_type: "Group" },
  { education_program_id: 2, student_id: 8, student_type: "User" },
  { education_program_id: 2, student_id: 9, student_type: "User" }
])

# Add assignments to EducationProgram
EducationProgramAssignment.create([
  { education_program_id: 1, assignment_id: 1, assignment_type: "Course" },
  { education_program_id: 1, assignment_id: 4, assignment_type: "Test" },
  { education_program_id: 1, assignment_id: 5, assignment_type: "Test" },
  { education_program_id: 2, assignment_id: 2, assignment_type: "Course" },
  { education_program_id: 2, assignment_id: 8, assignment_type: "Test" },
  { education_program_id: 2, assignment_id: 9, assignment_type: "Test" }
])

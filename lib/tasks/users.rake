namespace :users do
  desc "Create fake users"
  task :create, [:count] => :environment do |_, args|
    args.with_defaults(count: 1)
    count = args[:count].to_i
    
    user_data_generator = lambda do
      return {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: '123',
        password_confirmation: '123',
        role: 'user'
      }
    end

    User.create((0..count).map { user_data_generator.call })
  end
end

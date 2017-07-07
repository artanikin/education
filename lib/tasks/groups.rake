namespace :groups do
  desc "Create fake groups"
  task :create, [:count] => :environment do |_, args|
    args.with_defaults(count: 1)
    count = args[:count].to_i
    
    Group.create((0..count).map { { title: Faker::Company.name } })
  end
end

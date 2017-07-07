namespace :groups do
  desc "Create fake groups"
  task :create, [:count] => :environment do |_, args|
    args.with_defaults(count: 1)
    count = args[:count].to_i
    
    group_data_generator = lambda do
      return { title: Faker::Company.name }
    end

    Group.create((0..count).map { group_data_generator.call })
  end
end

namespace :base_app do

  namespace :admin do

    desc "Creates role."
    task :create_role, [:role] => :environment do |t, args|

      unless args[:role]
        puts "You have to specify role name. Tip: 'rake base_app:admin:create_role[admin]'"
        next
      end

      Role.create!(:name => args[:role])

    end


  end

end

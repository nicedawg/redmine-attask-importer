namespace :redmine do
  namespace :plugins do
    namespace :attask_importer do
      namespace :import do

        desc "Import users"
        task :users => :environment do

          attask = Attask.client(Setting.plugin_attask_importer['attask_subdomain'],
                                 Setting.plugin_attask_importer['attask_username'],
                                 Setting.plugin_attask_importer['attask_password'])


          attask.user.search.each do |u|

            user = User.find_by_attask_id u["ID"]

            unless user
              user = User.new(
                firstname: u["firstName"],
                lastname: u["lastName"],
                mail: u["emailAddr"],
              )
              user.login = u["emailAddr"].downcase
              user.custom_field_values = { User.attask_id_field.id => u["ID"] }

              user.last_login_on = u["lastLoginDate"]
              user.created_on = u["entryDate"]
              user.updated_on = u["lastUpdateDate"]

              user.status = case u["accessLevelID"]
                            when nil
                              User::STATUS_LOCKED
                            else
                              User::STATUS_ACTIVE
                            end

              user.save!
            end

          end
        end
      end
    end
  end
end

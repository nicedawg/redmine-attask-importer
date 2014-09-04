# attask_importer

## Import AtTask information into Redmine

### Install the plugin
```
cd plugins
git clone https://github.com/nicedawg/redmine-attask-importer
```

### Run migrations
Be sure to use bundle exec or specify RAILS_ENV as your situation demands.
```
rake redmine:plugins:migrate
```

### Restart Redmine
You should now be able to see the plugin list in Administration -> Plugins

### Configure the plugin
Go to this plugin's configure page, and enter your AtTask info so it can connect

### Run the Rake tasks
Please note -- you should try it out on a development instance and make sure
things go well first!
```
rake redmine:plugins:attask_importer:import:users
```


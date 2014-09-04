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

Redmine::Plugin.register :attask_importer do
  name 'Attask Importer plugin'
  author 'Brady Somerville'
  description 'Import AtTask information into Redmine'
  version '0.0.1'
  url 'http://github.com/nicedawg/redmine-attask-importer'
  author_url 'http://nicedawg.net'

  settings :default => {'empty' => true}, :partial => "settings/attask_importer_settings"
end

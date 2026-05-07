require "redmine"
require "#{File.dirname(__FILE__)}/lib/redmine_openid_connect/application_controller_patch"
require "#{File.dirname(__FILE__)}/lib/redmine_openid_connect/account_controller_patch"
require "#{File.dirname(__FILE__)}/lib/redmine_openid_connect/hooks"


Redmine::Plugin.register :redmine_openid_connect do
  name 'Redmine Openid Connect plugin'
  author 'Alfonso Juan Dillera / Markus M. May / Adrian Marquis'
  description 'OpenID Connect implementation for Redmine'
  version '1.3.1'
  url 'https://github.com/openanalytics/redmine_openid_connect'
  author_url 'https://github.com/openanalytics'

  settings :default => { 'empty' => true }, partial: 'settings/redmine_openid_connect_settings'
end

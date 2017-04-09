Redmine::Plugin.register :redmine_users_performance do
  name 'Users Performance Plugin'
  author 'Alperen Bozkurt'
  description 'A redmine plugin that graphically shows the time entries of users'
  version '0.0.1'
  url 'https://github.com/alperenbozkurt/redmine_users_performance'
  author_url 'http://alperenbozkurt.net/'


  menu :project_menu, :users_performance, { :controller => 'users_performance', :action => 'index' }, :caption => :users_performance, :param => :project_id
  project_module :users_performance do
    permission :users_performance, :users_performance => :index
  end


  settings default: {'chart_type' => 'bar_chart'}, partial: 'settings/users_performance'

end

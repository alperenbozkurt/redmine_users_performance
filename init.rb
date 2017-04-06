Redmine::Plugin.register :redmine_users_performance do
  name 'Users Performance Plugin'
  author 'Alperen Bozkurt'
  description 'A redmine plugin that graphically shows the time entries of users'
  version '0.0.1'
  url 'https://github.com/alperenbozkurt/redmine_users_performance'
  author_url 'http://alperenbozkurt.net/'


  menu :project_menu, :users_performance, { :controller => 'users_performance', :action => 'index' }, :caption => 'Kullanıcıların Performansı', :param => :project_id
  project_module 'Kullanıcıların Performansı' do
    permission 'Kullanıcıların Performansı', :users_performance => :index
  end
end

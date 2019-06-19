Redmine::Plugin.register :situations do
  name 'Situations plugin'
  author 'Mustafa BULUT'
  description 'This is a plugin for Situations'
  version '0.0.1'
  url 'https://github.com/mustafabulut34/redmine_situations'
  author_url 'https://www.linkedin.com/in/mustafabulut34/'
  
  permission :situations, { :situations=> [:index] }, :public => true
  menu :project_menu, :status, { :controller => 'situations', :action => 'index' }, :caption => 'Situations', :after => :activity, :param => :project_id
  
end
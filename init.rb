Redmine::Plugin.register :situations do
  name 'Situations plugin'
  author 'Mustafa BULUT'
  description 'This is a plugin for Situations'
  version '0.0.1'
  #url 'http://example.com/path/to/plugin'
  #author_url 'http://example.com/about'
  
  permission :situations, { :situations=> [:index] }, :public => true
  menu :project_menu, :status, { :controller => 'situations', :action => 'index' }, :caption => 'Situations', :after => :activity, :param => :project_id
  
end
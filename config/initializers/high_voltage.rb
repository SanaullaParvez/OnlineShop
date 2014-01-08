HighVoltage.configure do |config|
  #config.routes = false
  config.content_path = 'resources/'
  config.route_drawer = HighVoltage::RouteDrawers::Root
  #config.home_page = 'home'
  config.page_caching = true

end
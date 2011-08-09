require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('loadcfg', '0.1.0') do |p|
  p.description = "Allow you to load any configuration constants from config/whatever.yml"
  p.url = "http://github.com/j4rs/loadcfg"
  p.author = "Jorge Rodriguez"
  p.email = "jorge.rodriguez@continuum.cl"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/task/*.rake"].sort.each { |ext| load ext }
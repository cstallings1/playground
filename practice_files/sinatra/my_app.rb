require 'rubygems' if RUBY_VERSION < "1.9"
require 'sinatra/base'

class MyApp < Sinatra::Base
  set :static, true
  set :public_dir, File.dirname(__FILE__) + '/static'
end




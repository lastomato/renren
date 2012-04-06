# code is an adaptation of the twitter gem by John Nunemaker
# http://github.com/jnunemaker/twitter
# Copyright (c) 2009 John Nunemaker
#
# made to work with china's facebook, 人人网

require 'renren/config'
require 'renren/base'

if File.exists?('config/renren.yml')
  renren_oauth = YAML.load_file('config/renren.yml')[Rails.env || env || 'development']
  Renren::Config.api_key = renren_oauth["api_key"]
  Renren::Config.api_secret = renren_oauth["api_secret"]
end
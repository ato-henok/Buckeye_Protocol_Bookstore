# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
require 'rubygems'
require 'sinatra'
require './web'
run Rails.application
 

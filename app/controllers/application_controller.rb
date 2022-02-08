class ApplicationController < ActionController::Base
  include SessionsHelper
  RSpotify::authenticate("e7174e5b15db468ca13dddcbcc26a9b6","f0b74dd5720d449d98f3ba9d068ae0d9")
end

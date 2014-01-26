
require 'sinatra'

class Dash < Sinatra::Base
  models = %w|df hostname ip issue mem ps test top uptime users whereis|

  models.each do |model|
    get "/#{model}.php" do
      load "models/#{model}.rb" # this needs to be moved out of here
      classname = "Models::#{model.capitalize}"
      Kernel.const_get(classname).run
    end
  end

end
require 'bundler/setup'
Bundler.require

load "dash.rb"

map "/" do
  run Rack::File.new('../index.html')
end

%w|css js|.each do |dir|
  map "/#{dir}" do
    run Rack::File.new("../#{dir}")
  end
end

map "/sh" do
  run Dash
end
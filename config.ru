require 'rubygems'
require 'bundler'

Bundler.require

use Rack::Rewrite do
  r301 %r{.*}, 'http://www.peppyheppy.com$&', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'] != 'www.peppyheppy.com'
  }
end

use Rack::Static, 
  :urls => ["/stylesheets", "/images"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}

require 'basic_app.rb'
run Sinatra::Application

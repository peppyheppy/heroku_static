set :public, File.dirname(__FILE__) + '/public'

get '/' do
  File.read('./public/index.html')
end


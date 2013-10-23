require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym

get '/' do
  'Hello World'
end

not_found do
  'Ruta no encontrada'
end

error do
  'Disculpá, ocurrió un error horrible - ' +
    env['sinatra.error'].name
end

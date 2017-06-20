begin
  require "rails"
rescue LoadError
else
  require "rails/railtie"
end
begin
  require "rails"
rescue LoadError
else
  require "kubernetes_secret_to_env/railtie"
end
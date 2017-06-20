require 'kubernetes_secrets_to_env'

module KubernetesSecretsToEnv
  module Rails
    class Railtie < ::Rails::Railtie
      config.before_configuration do
        Secret.load_secrets if Secret.on_kubernetes?
      end
    end
  end
end

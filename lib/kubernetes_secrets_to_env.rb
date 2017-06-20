require "kubernetes_secrets_to_env/version"

module KubernetesSecretsToEnv
  class Loader
    def secrets_file_path
      "/etc/#{Rails.application.secrets.kubernetes_secret_name}"
    end

    def secrets_list
      begin
        Dir.entries(secrets_file_path) - ['.', '..']
      rescue => e
        puts "-----> No secret mounted or not on kubernetes. No secrets injected."
      end
    end

    def using_kubernetes?
      secrets_list.present?
    end

    def load_secrets
      secrets_list.each do |file_name|
        ENV[file_name] = File.read(File.join(secrets_file_path, file_name)).strip
      end
    end
  end
end

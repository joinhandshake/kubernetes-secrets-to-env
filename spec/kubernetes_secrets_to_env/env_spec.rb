require "spec_helper"

RSpec.describe KubernetesSecretsToEnv do
  it "has a version number" do
    expect(KubernetesSecretsToEnv::VERSION).not_to be nil
  end
end

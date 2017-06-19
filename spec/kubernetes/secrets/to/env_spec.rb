require "spec_helper"

RSpec.describe Kubernetes::Secrets::To::Env do
  it "has a version number" do
    expect(Kubernetes::Secrets::To::Env::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end

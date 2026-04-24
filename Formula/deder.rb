# Generated with JReleaser 1.23.0 at 2026-04-24T18:26:50.33140722Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.5.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.5.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "4e431feae1be2078ad702fe2e74b2ae9f11223ff5e8265c39085e755b75d1dd8"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.5.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "8836f284fb4c063bd62bf500b17cd0bdad1fda432b2e8a84acc43d3779657c29"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.5.1", output
  end
end

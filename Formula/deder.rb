# Generated with JReleaser 1.23.0 at 2026-03-19T01:34:06.549116181Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.19"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.19/deder-client-linux-x86_64", :using => :nounzip
    sha256 "0665e0da940f95f3a0d12f3e1737223e0d649c723b342431571859ace4abe477"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.19/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "96938d2b98e7d6889463d20827ea4b2a0afc4b3990ca2b769463f8f69c8dbc00"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.0.19", output
  end
end

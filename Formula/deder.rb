# Generated with JReleaser 1.24.0 at 2026-05-15T08:47:50.527707552Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.9.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.9.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "88f0460d9be12baf51606538ea12731844e512824a360066edf9bd1285e29f93"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.9.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "bb40c3cc5d95c8f90742cfba7c6f42c0d13ab8be1db537b5dcdc3a77da440839"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.9.0", output
  end
end

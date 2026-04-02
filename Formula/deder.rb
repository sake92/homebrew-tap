# Generated with JReleaser 1.23.0 at 2026-04-02T15:11:03.423161797Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.1.15"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.1.15/deder-client-linux-x86_64", :using => :nounzip
    sha256 "a6614c28e84930c5fd72055a734d53503ce761cd024a5888dbd0297c63dff1af"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.1.15/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "6034e4b1881d5e891b99fa97c82e63c19e53c7f7278f565d60d6213fbc9f45c8"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.1.15", output
  end
end

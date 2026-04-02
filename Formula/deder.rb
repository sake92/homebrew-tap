# Generated with JReleaser 1.23.0 at 2026-04-02T07:23:39.164275264Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.1.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.1.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "234067c6836514cb2b8f74db1cb5753ad1a54d1b41ac6943dbeb25fac13dd996"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.1.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "4ff9de7b298653a7ee10f3a62afdaf24812f64f6a0c43a0c0db16b5cc242e8c0"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.1.1", output
  end
end

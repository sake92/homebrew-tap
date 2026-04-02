# Generated with JReleaser 1.23.0 at 2026-04-02T13:07:19.222106499Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.1.9"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.1.9/deder-client-linux-x86_64", :using => :nounzip
    sha256 "93dc36fc8c768507f39d0b19bedd29a7324e1886066f3cd9e27dcad91ee862fd"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.1.9/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "b135d305505463e0f0d571283c920b23435de19e59381111b6a20d299e8070c5"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.1.9", output
  end
end

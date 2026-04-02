# Generated with JReleaser 1.23.0 at 2026-04-02T09:19:41.193793985Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.1.6"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.1.6/deder-client-linux-x86_64", :using => :nounzip
    sha256 "65691ca7fee1a24399fa4b57925b33bd97fe13bbf519b88a87b8020965228577"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.1.6/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "7d3b273d0ef85604337863a76eef58f2c6bfc024fe06be30d4a213653c238b48"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.1.6", output
  end
end

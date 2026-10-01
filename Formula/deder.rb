# Generated with JReleaser 1.26.0 at 2026-10-01T10:10:29.100553159Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.21.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.21.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "a1f62f52dbcf37d36ab1af757b0448064cdce20e37fcbd716785228fbb0eda47"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.21.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "70460618cd63685fd58bec8c1b08ba0cea36a098e37c24d7a10945df9ec3d3a7"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.21.0", output
  end
end

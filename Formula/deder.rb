# Generated with JReleaser 1.26.0 at 2026-10-30T13:18:31.264392229Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.22.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.22.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "f73d4c9afa846894d840002aef663bbb0edde822c44ad5d83f3da6f28ac6b1e2"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.22.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "5f2fdd70ece60641e4350f4c6da9c4fe96e3de19a36ab1ed2c7d5679d4c70292"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.22.0", output
  end
end

# Generated with JReleaser 1.23.0 at 2026-04-09T08:33:06.936423008Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.2.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.2.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "61468c944748c2879fae196550308b4c994287eef60cee090d8837b7fcfecc32"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.2.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "2c5af5b3c56acf13a0ff2e06a22a1d6fcbbeb6a7a8ed2097ab1032d2b2d22a20"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.2.0", output
  end
end

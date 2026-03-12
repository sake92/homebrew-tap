# Generated with JReleaser 1.23.0 at 2026-03-12T00:21:45.635081184Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.10"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.10/deder-client-linux-x86_64", :using => :nounzip
    sha256 "23edf0becb9c2559d75cdc5b24a7c59d25ae13cf16be6551ee3075165b9a94ad"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.10/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "b1760e9d0dd2bc555877d0348800838212d5e80c32378fd157f415c13648394c"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.0.10", output
  end
end

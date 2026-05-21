# Generated with JReleaser 1.24.0 at 2026-05-21T09:43:05.991383191Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.11.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.11.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "62826c5d7399369510de29b4e8198ba3ec966c3f2bcdc1467445c51149f81ce6"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.11.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "479e316faba444ccbdb2cdd8b7c659f07facd2409130a50e0bbdc11b023069ca"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.11.0", output
  end
end

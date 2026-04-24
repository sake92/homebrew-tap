# Generated with JReleaser 1.23.0 at 2026-04-24T15:04:33.839700064Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.5.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.5.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "265d89729dcd0461f0e619cdeb17ba147b1a30ce705ea39d4fd11f08b1efe844"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.5.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "faf37d935bde43fd1ab381bc9f4cad844c04de60449ca90a21f5e0ef5d8a1ce0"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.5.0", output
  end
end

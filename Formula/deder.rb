# Generated with JReleaser 1.24.0 at 2026-06-17T16:34:32.643172293Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.19.2"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.19.2/deder-client-linux-x86_64", :using => :nounzip
    sha256 "08308840f90e8d2ea5ecfd4af9708b8e54f1e7e68900c0b7d3ad20e177f96b31"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.19.2/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "a9cc2e567e11dec6fa981de53d5d70814d748257e29b9ec6ccff39bcd288f684"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.19.2", output
  end
end

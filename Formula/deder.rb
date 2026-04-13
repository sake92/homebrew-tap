# Generated with JReleaser 1.23.0 at 2026-04-13T18:31:15.833407779Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.2.4"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.2.4/deder-client-linux-x86_64", :using => :nounzip
    sha256 "e9ada17aa0d86691b2f5d5f313e301c6603f6482419c32e6b274e1ab69cd7f3c"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.2.4/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "2443e88dbfdc7658a7c84afb05fb50aeb638d3545982a1f5008a0b952f03aad5"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.2.4", output
  end
end

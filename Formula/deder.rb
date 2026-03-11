# Generated with JReleaser 1.23.0 at 2026-03-11T01:29:54.016763949Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.9"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.9/deder-client-linux-x86_64", :using => :nounzip
    sha256 "882ebb71205e05bce6eb070a40069586833889c6bcc5ef5cdcd8c71ed07bdad7"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.9/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "43b212057da0300704b8ac6b08d3a0fbc7c2b21e21e183dab5a6ea9c300f6ce8"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.0.9", output
  end
end

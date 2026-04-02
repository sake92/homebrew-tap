# Generated with JReleaser 1.23.0 at 2026-04-02T14:03:01.491227578Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.1.12"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.1.12/deder-client-linux-x86_64", :using => :nounzip
    sha256 "a54449212a9efb0cf907a33645a650674718a9d523fd9bd290936e856e9bf9b7"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.1.12/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "d0edcf0834a368128d8a2d3a3a85a184b699bcbe610c90c428caaa165d42cfd2"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.1.12", output
  end
end

# Generated with JReleaser 1.24.0 at 2026-06-05T07:44:55.509087879Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.16.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.16.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "49f8f3f0bd147040094bfc7e51673255b22e93be34f99b4fbe78094b80d8d171"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.16.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "3c400a8706b361b7662b4912b28021f2e1fbcdeb452c9c1ed6d233cae0adfd6b"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.16.0", output
  end
end

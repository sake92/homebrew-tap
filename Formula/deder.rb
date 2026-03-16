# Generated with JReleaser 1.23.0 at 2026-03-16T01:44:59.478802256Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.14"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.14/deder-client-linux-x86_64", :using => :nounzip
    sha256 "6486ec6405c9caa10cc429932a3091b383d1e6ab00c27ce0839a2e98930f3e5b"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.14/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "b119cf718a40b889224e22092800a4fdb8321b208b7b2a67f5099e905c28d329"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.0.14", output
  end
end

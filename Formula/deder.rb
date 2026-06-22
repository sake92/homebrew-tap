# Generated with JReleaser 1.24.0 at 2026-06-22T17:28:48.954027801Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.20.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.20.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "7f44e4eb5ede10f898e2581bc6f0438b79433b9ba449c0bf83c88928df8a85f2"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.20.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "936d14118814211e5aa04f9b44b7925f4a2b5870222ddddbf09f7007e62dc210"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.20.0", output
  end
end

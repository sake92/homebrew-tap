# Generated with JReleaser 1.24.0 at 2026-05-15T08:54:51.371912439Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.9.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.9.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "d08ba747ffd39d4cf7508b384813f53f5646eaa756398b15de1a0befd51843f2"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.9.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "0dbc7c65ed41b5e72b3814738eb6c17905f1ba9ba86ae13717649be928c32887"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.9.1", output
  end
end

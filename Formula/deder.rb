# Generated with JReleaser 1.23.0 at 2026-03-13T01:22:17.819711543Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.11"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.11/deder-client-linux-x86_64", :using => :nounzip
    sha256 "bc8f3f76e434e8fcc9ff6695a6f4c36174aeb29d5e3c06ce53e7a403ed876e30"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.11/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "8bf0a856526de6da2a8201c7b72d704cf4dd4304e3f04d4e2c62d212a1bc45eb"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.0.11", output
  end
end

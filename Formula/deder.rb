# Generated with JReleaser 1.24.0 at 2026-05-29T13:38:34.616840784Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.13.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.13.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "5a31526e4526071b064b8ce5cf1180873f6d01b74a6334fc2b27f5784fbb535b"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.13.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "56e693a92b058ef4a528d6a793ccc52af484c11875378a513c42d278e2f74b89"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.13.1", output
  end
end

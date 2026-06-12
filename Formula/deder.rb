# Generated with JReleaser 1.24.0 at 2026-06-12T08:45:17.017298599Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.18.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.18.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "7f28c80f98f599c6175948b5065d2412b89a4ca7109a3efb83d81a4770b1425d"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.18.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "6553aeafb7f593b67d38f4b0b895cc2fa81453f70a18644612c912b9cac26fbe"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.18.1", output
  end
end

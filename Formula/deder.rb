# Generated with JReleaser 1.24.0 at 2026-05-26T09:45:45.135849505Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.12.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.12.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "8d90456d69a3de08cec5d4eee9f0a9762005647bbc0bce4eec743c7567a8fd7d"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.12.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "d0a4e822993d86c634770b97b3e946f921ce526a12792a01ad52c46776dfc549"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.12.0", output
  end
end

# Generated with JReleaser 1.23.0 at 2026-04-27T13:58:48.960135278Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.6.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.6.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "7d04f0c86853f4f5d8a5a0e7e72dfc34bc1ed4d753879174ea62e79d32645f54"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.6.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "c2b11faa0b1742fa34281af2939915366731363d0a973369c26b627a8b0f0fc7"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.6.0", output
  end
end

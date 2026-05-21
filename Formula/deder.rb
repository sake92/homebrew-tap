# Generated with JReleaser 1.24.0 at 2026-05-21T14:52:10.014249541Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.11.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.11.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "c71288447b5d3c00c129765aac017a3848cde1e7914eea8c7ae1e9fec99e9274"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.11.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "f6a0a8e560db1d0796ad5b30daccaada27ff9f7a3d8a8887a260b84b38042c89"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.11.1", output
  end
end

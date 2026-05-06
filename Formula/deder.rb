# Generated with JReleaser 1.24.0 at 2026-05-06T13:32:59.326155837Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.7.6"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.7.6/deder-client-linux-x86_64", :using => :nounzip
    sha256 "c647ed6a67d2ed47bca1c816d4334d0a03e3c1c83201a498c1c94532bd1585b4"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.7.6/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "1ad64151da6c3bfcd7d906305b9a5c7bccc3f7170d3d23eadd5b9494b4ee76eb"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.7.6", output
  end
end

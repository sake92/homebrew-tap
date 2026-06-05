# Generated with JReleaser 1.24.0 at 2026-06-05T10:02:37.453092003Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.16.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.16.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "daae6f03360ee9939e59522f97a0dac262143837c564b2aa7588061c7e5beea3"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.16.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "d26fcc480664b2bd7e4453fd76b462219dd06205ebd9a3050e040a22c4b59452"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.16.1", output
  end
end

# Generated with JReleaser 1.23.0 at 2026-04-09T08:50:10.353889645Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.2.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.2.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "fb3427d13c774f190c50d90798d1a8109f9a9c1cd6152648b53fda91566100e3"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.2.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "d278e066ff623ea440f9ce11dc12acac394a1fc1a9b590a265293413650e8a20"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.2.0", output
  end
end

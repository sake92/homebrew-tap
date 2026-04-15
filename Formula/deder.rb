# Generated with JReleaser 1.23.0 at 2026-04-15T08:21:50.52767274Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.3.3"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.3.3/deder-client-linux-x86_64", :using => :nounzip
    sha256 "f4fcecbcdf6f9fed1aaec1984191b5d93bb2d41925f551d7ab1463374be789f5"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.3.3/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "4222e106aa329fe87f706e2b1bd82c35bd72e23bf5a96c12beaed38fc86090db"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.3.3", output
  end
end

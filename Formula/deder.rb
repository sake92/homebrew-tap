# Generated with JReleaser 1.24.0 at 2026-05-13T11:35:57.109165307Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.8.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.8.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "2742072e776f64c3c113e0bd1bcc97548544faff02b82f291e921f2085124d81"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.8.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "58037478ac612c503a62ae1fae122f98a580cf74198f2d8677cca75f63d4d0dc"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.8.0", output
  end
end

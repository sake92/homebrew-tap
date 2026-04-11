# Generated with JReleaser 1.23.0 at 2026-04-11T09:07:59.787191937Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.2.2"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.2.2/deder-client-linux-x86_64", :using => :nounzip
    sha256 "7bdd36134bf084a5952e5fb1431352a2b3823dc22d84e1031081766e656b8fc6"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.2.2/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "4a77fa7bd85ed5cb1c66fe4e1a3dc72c7cb66dabda1d5d7bf5e190517897adcb"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.2.2", output
  end
end

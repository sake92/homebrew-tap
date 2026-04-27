# Generated with JReleaser 1.23.0 at 2026-04-27T19:13:04.757381919Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.6.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.6.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "6ce33646df4b15d142b03e9e9b63df8640e2e394354e42a2d99c3435892a1b1c"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.6.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "67a908d5f6e2f666cf7a87529eafdab3dac20b4a4a9caba2bf0141ef413598a2"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.6.1", output
  end
end

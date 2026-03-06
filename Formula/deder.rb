# Generated with JReleaser 1.23.0 at 2026-03-06T00:13:23.726326823Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.8"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.8/deder-client-linux-x86_64", :using => :nounzip
    sha256 "d144125a4e6bd9096f6fc0d4714872996f7d014b8f0efde0b53ffb247e1215ea"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.8/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "3058cda00896530f2719f09e736700c16016cba9f04ba2125ef6185d6e28cb72"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.0.8", output
  end
end

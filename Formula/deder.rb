# Generated with JReleaser 1.24.0 at 2026-05-13T16:39:34.492825665Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.8.4"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.8.4/deder-client-linux-x86_64", :using => :nounzip
    sha256 "0b55f7464e31c8c07156a0094376114c55d2e39af68ded859d57c41afb946a1a"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.8.4/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "d100d3c069b503e19919a27ef5e45698145ab4599437f2ef0c68d65a70dcc2da"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.8.4", output
  end
end

# Generated with JReleaser 1.23.0 at 2026-04-24T07:56:49.994914296Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.4.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.4.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "5f8ff05fa39556be9dc22bcb5f18abb32ea0dec9598e6923670f914fedb25df4"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.4.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "0f32005d386086957989b20f3ef81bdfb6a82fd53a8b7200db6f8a9572f96dec"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.4.0", output
  end
end

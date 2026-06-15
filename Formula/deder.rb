# Generated with JReleaser 1.24.0 at 2026-06-15T15:28:18.941264073Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.19.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.19.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "68648a9189cbf15ba92b46e5977e66c6072e361a7511ffec983bd1d6015ce290"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.19.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "02dd9355cff28345efdc069c53f6964734ea949e4ca0c8ef9e7a8b60f039e83b"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.19.0", output
  end
end

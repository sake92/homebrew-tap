# Generated with JReleaser 1.23.0 at 2026-03-17T01:45:02.690295284Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.16"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.16/deder-client-linux-x86_64", :using => :nounzip
    sha256 "78e1611b3267a07b55446321c76ad2f0e6786a4be97431c767aa0ce90159a933"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.16/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "45007bf62fb0700b5aa5397d42f2bc36b043556de9fdb30a0dda12b2b4d1fa9a"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.0.16", output
  end
end

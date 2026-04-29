# Generated with JReleaser 1.23.0 at 2026-04-29T21:39:31.350875008Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.7.2"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.7.2/deder-client-linux-x86_64", :using => :nounzip
    sha256 "3876ac89f07bc871092b98edfd98fd1d21cb1a197bf75d549dfe17915bf6329c"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.7.2/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "3c2adb372af02112e0faa2169af7b6953c5d7177e7def638938ae5c16bf00927"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.7.2", output
  end
end

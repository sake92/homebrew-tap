# Generated with JReleaser 1.23.0 at 2026-03-03T14:25:31.95943577Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.7"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.7/deder-client-linux-x86_64", :using => :nounzip
    sha256 "a2c910c2702f3e6228ddf8f0271f7f213f67306ab7a231b10e1fa22092f2635b"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.7/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "696950c0976c212ad0f06a44c703bf16be24ae75739fb8d993890375ecc57326"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.0.7", output
  end
end

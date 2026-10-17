# Generated with JReleaser 1.26.0 at 2026-10-17T21:10:13.964107794Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.21.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.21.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "6add0a7fad5b15acc98aca80440c395278c1d62447688e30b69658647621760b"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.21.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "9b9f91ac8581cfb1e1ce927defede47cd61ef507a0ac95fc42ce520104c7afe0"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.21.1", output
  end
end

# Generated with JReleaser 1.23.0 at 2026-04-02T12:22:25.432810466Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.1.8"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.1.8/deder-client-linux-x86_64", :using => :nounzip
    sha256 "506a56a9da74d5eff11317281effb049483c1c456c1fae564c1ee4f0b2a325d8"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.1.8/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "b5962ee866746f586ae8d7a1c9395336e996f627f87dd93b87698416ba720f56"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.1.8", output
  end
end

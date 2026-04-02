# Generated with JReleaser 1.23.0 at 2026-04-02T12:14:12.013205011Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.1.7"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.1.7/deder-client-linux-x86_64", :using => :nounzip
    sha256 "cd794ad8c8964af4914dd7a177ecbbea7cc5018dec1353c20f9fe188d9320f6f"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.1.7/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "fa17e14f94aa0e499ce7a20a0c88eae9a0bec1f02256c618ccb5c376eb6a96db"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.1.7", output
  end
end

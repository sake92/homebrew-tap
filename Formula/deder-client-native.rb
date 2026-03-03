# Generated with JReleaser 1.23.0 at 2026-03-03T13:42:45.695323865Z

class DederClientNative < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.5"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.5/deder-client-linux-amd64", :using => :nounzip
    sha256 "7df0406ebb9d47e1d78bf2eca9386927c71b0ee102bcbe741f043f8f314b1ad4"

    def install
      bin.install "deder-client-linux-amd64" => "deder-client-native"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.5/deder-client-macos-aarch64", :using => :nounzip
    sha256 "dade907b69698052642c93766565d9848e305f2de8bc7f84e1d1fbf500250b79"

    def install
      bin.install "deder-client-macos-aarch64" => "deder-client-native"
    end
  end


  test do
    output = shell_output("#{bin}/deder-client-native --version")
    assert_match "0.0.5", output
  end
end

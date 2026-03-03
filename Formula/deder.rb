# Generated with JReleaser 1.23.0 at 2026-03-03T14:07:54.013896203Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.6"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.6/deder-client-linux-amd64", :using => :nounzip
    sha256 "231bd3efd97d0fa5ce01d1e5e1e14219e3179b9cc7e6d54c457a30d6d339ecaa"

    def install
      bin.install "deder-client-linux-amd64" => "deder-client-native"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.6/deder-client-macos-aarch64", :using => :nounzip
    sha256 "225ef242a1a5c0a319dc672ec5bfadc0a45861ae5d30c85e1a57b2ac6071d8bf"

    def install
      bin.install "deder-client-macos-aarch64" => "deder-client-native"
    end
  end


  test do
    output = shell_output("#{bin}/deder-client-native --version")
    assert_match "0.0.6", output
  end
end

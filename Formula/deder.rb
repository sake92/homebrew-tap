# Generated with JReleaser 1.23.0 at 2026-03-25T09:13:48.011180896Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.21"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.21/deder-client-linux-x86_64", :using => :nounzip
    sha256 "5d59891b5f95c48bbf1230d5407fb66422a27bce35b293d9df57490a775d7e0a"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.21/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "8e177dffd56cd6896b4b857ea33203597b87d73183674f8ca5239ca7a7c2f4b4"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.0.21", output
  end
end

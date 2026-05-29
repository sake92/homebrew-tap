# Generated with JReleaser 1.24.0 at 2026-05-29T15:21:54.273786019Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.13.2"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.13.2/deder-client-linux-x86_64", :using => :nounzip
    sha256 "9d575a6da5bebc6509b6ec241a8c8aa9672a4d7de2e8dde235d56365514ef314"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.13.2/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "b5a1b305d0b8351540ef80b798308941136ff4660261a975f23a59121320e033"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.13.2", output
  end
end

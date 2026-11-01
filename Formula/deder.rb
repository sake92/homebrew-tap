# Generated with JReleaser 1.27.0 at 2026-11-01T14:46:24.592714312Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.22.2"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.22.2/deder-client-linux-x86_64", :using => :nounzip
    sha256 "7db450bb678f6422abdb47febabe857019dd508fe7f23b5d6064e50ca8f8b213"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.22.2/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "289b8893972546a4eb08bae0eef336be722ca766d74b48ea35d555a746cc963f"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.22.2", output
  end
end

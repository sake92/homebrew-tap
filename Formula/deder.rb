# Generated with JReleaser 1.23.0 at 2026-03-16T23:39:27.573474388Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.15"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.15/deder-client-linux-x86_64", :using => :nounzip
    sha256 "ad6f470d1fdb0611235f9690e69c1ab6adac33bda4e0f450f713047072325888"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.15/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "811f3eb64e22aad3ed9e2a0432cd1b0c087c7b309e1861c06e7167f977783d19"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.0.15", output
  end
end

# Generated with JReleaser 1.26.0 at 2026-08-31T12:17:32.144685393Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.20.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.20.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "e0f99344474d886878d67a5c75806f7257b55c39024f6e39e55848aa9b446c41"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.20.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "fc7c9c2b55c52546ba3314c41e11436aa47cc22f3b99fce77e6a2113c49bdf04"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.20.1", output
  end
end

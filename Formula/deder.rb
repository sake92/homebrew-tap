# Generated with JReleaser 1.24.0 at 2026-06-01T16:43:23.808460352Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.14.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.14.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "45c042d7d9f991c9c20f382169c993dbc12c474369fc93d89b7c7db439a6090d"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.14.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "d17570dea42e44ab6662b57a0e98f814a265c3cfc5fc44b6e4afae80dc481bb0"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.14.1", output
  end
end

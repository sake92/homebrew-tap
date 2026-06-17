# Generated with JReleaser 1.24.0 at 2026-06-17T21:53:29.251389059Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.19.3"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.19.3/deder-client-linux-x86_64", :using => :nounzip
    sha256 "328a3eedcd1490c7ac97fe78276ae9e02ba8e45e4ea814a029666e775c005821"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.19.3/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "ec227aa4885784e6c2d2fc9ff3ffe7518a8026b9f5c91c4df275e1a26b8c201c"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.19.3", output
  end
end

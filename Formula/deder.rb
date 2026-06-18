# Generated with JReleaser 1.24.0 at 2026-06-18T12:27:41.241429637Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.19.5"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.19.5/deder-client-linux-x86_64", :using => :nounzip
    sha256 "367221f8fbdf20c65da0eac731a1068100652688e896377c6d0bb17ffd79f751"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.19.5/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "907b6d1a71851fe4243ebb721b75b9256001250f5487093f75e7c53597af6706"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.19.5", output
  end
end

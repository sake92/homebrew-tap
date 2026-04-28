# Generated with JReleaser 1.23.0 at 2026-04-28T09:58:01.553793702Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.7.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.7.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "b52e19835514930015451bf893bfe376af8d884b82d2ded2ff57a310054efe8b"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.7.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "3ea1133c3ee67d5ebde3541477d921cf3084b9c8f7e23dfb10e5e2aa41594859"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.7.0", output
  end
end

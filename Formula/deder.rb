# Generated with JReleaser 1.23.0 at 2026-04-13T07:52:30.971848914Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.2.3"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.2.3/deder-client-linux-x86_64", :using => :nounzip
    sha256 "108d1a84cd9b0647738e1434073ffa862f84c443e2dc74397ef365ad07288faa"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.2.3/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "275e09723c5e2a7947d602edf41765dc10611bc442a41ba8d296ab9161bf310f"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.2.3", output
  end
end

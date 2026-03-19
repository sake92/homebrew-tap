# Generated with JReleaser 1.23.0 at 2026-03-19T14:37:41.903940409Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.0.20"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.0.20/deder-client-linux-x86_64", :using => :nounzip
    sha256 "07a477ac620a469efc73a77489d4e3dbd0153a8a159ea6898c7b1a4fbfac8d74"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.0.20/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "21d738355cf67859c644245ee0b69f9aee71558a5b438c300840e57d8ec3331c"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.0.20", output
  end
end

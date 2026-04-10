# Generated with JReleaser 1.23.0 at 2026-04-10T12:18:54.202540485Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.2.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.2.1/deder-client-linux-x86_64", :using => :nounzip
    sha256 "326ef1d8b26ce37a13db9409f9c95e5dc290c8a9d52efdd465ac40319961fa7f"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.2.1/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "214ac4a9a8633da459dbcc2d66e5c8d9318144f3bc2b7989c6b47be68bb079bc"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.2.1", output
  end
end

# Generated with JReleaser 1.24.0 at 2026-05-29T13:21:43.147216836Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.13.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.13.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "57272fe61528738c9dfe65334da063cb4400b4a8dd8744e3843e5e4342d437b6"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.13.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "59be6e8b97fbb9b36026c373e904840fe115cc6bb0a7bb265d07f224624c313d"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.13.0", output
  end
end

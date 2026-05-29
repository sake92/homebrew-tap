# Generated with JReleaser 1.24.0 at 2026-05-29T17:53:00.027262208Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.13.3"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.13.3/deder-client-linux-x86_64", :using => :nounzip
    sha256 "a1f09c773a6cba1098daa4cdc7cc316a4b8acefe44e860aafce9f0ba204c8ce7"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.13.3/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "9e34c3275588207ca1cfddec839cb4c4b9a3e557820a560f71e95a017b7b05b7"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.13.3", output
  end
end

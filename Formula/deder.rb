# Generated with JReleaser 1.24.0 at 2026-06-11T20:37:16.767707385Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.18.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.18.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "810621346db2a696e7c2127bdd6e463c905a2241dc5405825f37e7b717752869"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.18.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "4e6eb0e91592b016b56ba1ce11f793338ce6217b4284e6e89662dfd76650a47b"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.18.0", output
  end
end

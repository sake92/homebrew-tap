# Generated with JReleaser 1.24.0 at 2026-05-19T11:58:32.914283185Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.10.0"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.10.0/deder-client-linux-x86_64", :using => :nounzip
    sha256 "93cac006712121980d006abdc60dfa10fb9635a09b3f46db3351d5b8b7c92fe1"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.10.0/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "d710e85b3a49dfc4fc38940053ef93df76a1d8939aa4a4e526251f65d4d0881b"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.10.0", output
  end
end

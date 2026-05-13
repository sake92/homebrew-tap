# Generated with JReleaser 1.24.0 at 2026-05-13T13:18:07.071787223Z

class Deder < Formula
  desc "Deder Build Tool"
  homepage "https://github.com/sake92/deder"
  version "0.8.2"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sake92/deder/releases/download/v0.8.2/deder-client-linux-x86_64", :using => :nounzip
    sha256 "21291f629a71a69630748a4ce997f612ec6c052b3e8352f89e1d3a363330f2df"

    def install
      bin.install "deder-client-linux-x86_64" => "deder"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sake92/deder/releases/download/v0.8.2/deder-client-osx-aarch_64", :using => :nounzip
    sha256 "4773d7a2b26b1f25efc579c2bbedd5a961eaac2e618a36720225dee2a6ddb3e6"

    def install
      bin.install "deder-client-osx-aarch_64" => "deder"
    end
  end


  test do
    output = shell_output("#{bin}/deder --version")
    assert_match "0.8.2", output
  end
end

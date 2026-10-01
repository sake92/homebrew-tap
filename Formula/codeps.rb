# Generated with JReleaser 1.26.0 at 2026-10-01T13:12:23.641762189Z

class Codeps < Formula
  desc "Code dependency health tracker"
  homepage "https://github.com/sake92/codeps"
  url "https://github.com/sake92/codeps/releases/download/v0.5.1/codeps-cli-0.5.1.jar", :using => :nounzip
  version "0.5.1"
  sha256 "bfb797b18ee94091420f34c987dda00d6425fd46c535dd3c1e251665a0763c14"
  license "Apache-2"


  def install
    libexec.install "codeps-cli-0.5.1.jar"

    bin.mkpath
    File.open("#{bin}/codeps", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/codeps-cli-0.5.1.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/codeps --version")
    assert_match "0.5.1", output
  end
end

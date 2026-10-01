# Generated with JReleaser 1.26.0 at 2026-10-01T10:06:53.693322926Z

class Codeps < Formula
  desc "Code dependency health tracker"
  homepage "https://github.com/sake92/codeps"
  url "https://github.com/sake92/codeps/releases/download/v0.5.0/codeps-cli-0.5.0.jar", :using => :nounzip
  version "0.5.0"
  sha256 "2c03b2d50237b356cc1f1b56d1b82ce174504864e67663bda8fd3f2619d65504"
  license "Apache-2"

  depends_on "openjdk@"

  def install
    libexec.install "codeps-cli-0.5.0.jar"

    bin.mkpath
    File.open("#{bin}/codeps", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/codeps-cli-0.5.0.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/codeps --version")
    assert_match "0.5.0", output
  end
end

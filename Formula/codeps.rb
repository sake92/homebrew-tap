# Generated with JReleaser 1.26.0 at 2026-10-14T15:35:49.962409367Z

class Codeps < Formula
  desc "Code dependency health tracker"
  homepage "https://github.com/sake92/codeps"
  url "https://github.com/sake92/codeps/releases/download/v0.6.0/codeps-cli-0.6.0.jar", :using => :nounzip
  version "0.6.0"
  sha256 "efcaa7c33402b7b93d7f1fe51c22b9192c9d39062d1e2a66eda0dfd528ad1379"
  license "Apache-2"


  def install
    libexec.install "codeps-cli-0.6.0.jar"

    bin.mkpath
    File.open("#{bin}/codeps", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/codeps-cli-0.6.0.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/codeps --version")
    assert_match "0.6.0", output
  end
end

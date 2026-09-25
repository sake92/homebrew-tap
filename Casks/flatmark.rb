# Generated with JReleaser 1.26.0 at 2026-09-25T12:36:26.116699759Z


cask "flatmark" do
  desc "Static site generator"
  homepage "https://sake92.github.io/flatmark/"
  url "https://github.com/sake92/flatmark/releases/download/v0.3.0/flatmark-1.0.0.pkg",
      verified: "github.com"
  version "0.3.0"
  sha256 "0224e78b1da7332f4271abc32a3ce289ec963e7c9853bea4e5853fb05c29dfc1"
  name "Flatmark"


  pkg "flatmark-1.0.0.pkg"
  uninstall pkgutil: "ba.sake.flatmark",
            delete: "/usr/local/bin/flatmark"
end

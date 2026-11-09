# frozen_string_literal: true

cask "t3-code-bar" do
  version "2.0.0-alpha.2"
  sha256 "645323008a9b5e91b87194a1a44eace6ca46753891bd6c9d4482d8ec764cbb05"

  url "https://github.com/eliophan/t3code-bar/releases/download/v#{version}/T3-Code-Bar-#{version}-darwin-aarch64.app.tar.gz"
  name "T3 Code Bar"
  desc "T3 Code inbox and usage in the menu bar"
  homepage "https://github.com/eliophan/t3code-bar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "T3 Code Bar Tauri.app"

  caveats <<~EOS
    This app is ad hoc signed and not notarized by Apple.
    If macOS blocks it, try opening the app, then go to:
    System Settings → Privacy & Security → Open Anyway.
  EOS
end

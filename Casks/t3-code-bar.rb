# frozen_string_literal: true

cask "t3-code-bar" do
  version "2.0.0-alpha.1"
  sha256 "2856a270d83865af19ef03b8ff556d6687af6fec6dff1bfcd3e1fa668291f01d"

  url "https://github.com/eliophan/t3code-bar/releases/download/v#{version}/T3-Code-Bar-#{version}-darwin-aarch64.app.tar.gz"
  name "T3 Code Bar"
  desc "T3 Code inbox and usage in the menu bar"
  homepage "https://github.com/eliophan/t3code-bar"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "T3 Code Bar Tauri.app"

  caveats <<~EOS
    This app is ad hoc signed and not notarized by Apple.
    If macOS blocks it, try opening the app, then go to:
    System Settings → Privacy & Security → Open Anyway.
  EOS
end

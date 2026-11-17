cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.0.12"
  sha256 arm:   "7d4905c7e359464e4355e82aa9765e5b5d6e2c87bc2d059197df1b34330f451d",
         intel: "8195c5ae2d95293fca0d0b9c9153a1a19a83646ef10eb1da65b23f576d4024b5"

  url "https://github.com/YuzuZensai/Eda/releases/download/#{version}/Eda-#{version}-osx-#{arch}-stable.dmg"
  name "Eda"
  desc "Git client with visual repository history"
  homepage "https://eda.kirameki.cafe/"

  depends_on :macos

  app "Eda.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-dr", "com.apple.quarantine", "{{appdir}}/Eda.app"],
        must_succeed: true
  end
end

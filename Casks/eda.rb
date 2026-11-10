cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.0.7"
  sha256 arm:   "a741c34e4293de3b246190472cf0180c38c21b4edbb703189a079981d8317b04",
         intel: "e8ab6f67fcd485f4d860b73e2c85bb758b564272c9e2b078432cf250de366597"

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

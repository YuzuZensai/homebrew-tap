cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.0.13"
  sha256 arm:   "603364ea0d2f560dc0dbf5ef95101560201a6430d745501e05ea1c993d4f5ade",
         intel: "533ac72d09521f28b54a1997af3df172076301a9824c5e42b7e359ae3c8c0c2f"

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

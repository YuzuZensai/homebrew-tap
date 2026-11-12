cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.0.10"
  sha256 arm:   "a3f25c7d63d65d5309237bfb8d6e6a7a26873506c103be6cd17bfcdf15a8643b",
         intel: "abdc7dc043c8201d4f1a1db2a91d64e9534f744075a0e4e4ba37df457e889f83"

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

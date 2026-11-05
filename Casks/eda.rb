cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.0.2"
  sha256 arm:   "bdd9dceaa33ef37ebc6781d845e536abb63502fba952c0810d03553c112def34",
         intel: "8c1dd63e9da738244bc6d67a2cab38bdf052b121b2edb980d6e7419cc236b168"

  url "https://github.com/YuzuZensai/Eda/releases/download/#{version}/Eda-#{version}-osx-#{arch}-stable.dmg"
  name "Eda"
  desc "Git client with visual repository history"
  homepage "https://eda.kirameki.cafe/"

  auto_updates true
  depends_on :macos

  app "Eda.app"
end

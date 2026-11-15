cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.0.11"
  sha256 arm:   "a8ea1a460586e6958bc45bcbc92a8896c3a8dc6ed0f222483c98f5527af2ea3d",
         intel: "7cbd9198d69039623e80b185664de930c7867bf834aa9a5d6d4fbaf22814bea0"

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

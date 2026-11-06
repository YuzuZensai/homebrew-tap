cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.0.3"
  sha256 arm:   "c85939b13929c3f9517168947880d3983a3a455375cc6d061a69b4027c9f0dec",
         intel: "aca1e85522bac83d588c56b627abb1d3f0b0ff9e375a5be711d2b73311d09a2b"

  url "https://github.com/YuzuZensai/Eda/releases/download/#{version}/Eda-#{version}-osx-#{arch}-stable.dmg"
  name "Eda"
  desc "Git client with visual repository history"
  homepage "https://eda.kirameki.cafe/"

  depends_on :macos

  app "Eda.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Eda.app"],
                   must_succeed: true
  end
end

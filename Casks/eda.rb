cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.0.5"
  sha256 arm:   "eab503f107fd4bfeba399f7ea5c34b614a2880a2a5ca4114fbe78a972055404c",
         intel: "5ece5b6abb86ba79879da8788b5bfe0e42ebbc1c178d7ee9a06350e611524d2f"

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

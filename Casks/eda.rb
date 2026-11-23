cask "eda" do
  arch arm: "arm64", intel: "x64"

  version "0.0.15"
  sha256 arm:   "9168683b622a4291abc04c2345423da7ec29677a13f0c15a838451756a7d7085",
         intel: "329ae10d57a10de3a6a7dfec6ee8cd60ca51045b3472c3d9e5439f2495ea01c4"

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

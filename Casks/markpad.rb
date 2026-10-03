cask "markpad" do
  version "0.5.1"
  sha256 "914e0bf20802589c1d341a93143062419c38bdb7819cb08a7160f7ce9e253365"

  url "https://github.com/cycorld/markpad/releases/download/v#{version}/MarkPad-v#{version}.zip"
  name "MarkPad"
  desc "Small native markdown editor for macOS"
  homepage "https://github.com/cycorld/markpad"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "MarkPad.app"

  zap trash: [
    "~/Library/Application Scripts/com.cycorld.markpad",
    "~/Library/Containers/com.cycorld.markpad",
    "~/Library/Preferences/com.cycorld.markpad.plist",
  ]
end

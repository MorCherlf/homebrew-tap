cask "shake-yes" do
  version "0.1.0"
  sha256 "3e9f67e7b714bddb5f8faf1497f60d50bcd607bb782300456beadfad441b13d8"

  url "https://github.com/MorCherlf/Shake-Yes/releases/download/v#{version}/Shake-Yes-#{version}-universal.dmg",
      verified: "github.com/MorCherlf/Shake-Yes/"
  name "Shake, Yes!"
  desc "Control Coding Agent approvals with AirPods head gestures"
  homepage "https://github.com/MorCherlf/Shake-Yes"

  depends_on macos: :sonoma

  app "Shake, Yes!.app"

  zap trash: [
    "~/.config/airpodscontrol",
    "~/Library/Logs/AirPodsControl-hooks.log",
    "~/Library/Logs/AirPodsControl.log",
    "~/Library/Preferences/dev.morcherlf.AirPodsControl.plist",
  ]

  caveats <<~EOS
    This release is ad-hoc signed because the maintainer does not currently
    have an Apple Developer Program membership. It is not Developer ID signed
    or notarized, so macOS may require explicit approval and may ask you to
    grant Motion & Fitness permission again after updates.

    Standard agent hooks do not require Accessibility permission. It is needed
    only if you explicitly enable the advanced always-on/key-injection mode.
  EOS
end

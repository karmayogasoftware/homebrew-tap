class Karma < Formula
  desc "Run Claude Code and Codex agents from one terminal"
  homepage "https://karmayoga.dev"
  version "0.3.4"

  on_macos do
    url "https://github.com/karmayogasoftware/karmayoga/releases/download/v0.3.4/karma-0.3.4-macos-universal.tar.gz"
    sha256 "a117122c8d033254cbb661c08955834721533316f217faab8b7eea548d3a67a0"
  end

  on_linux do
    on_intel do
      url "https://github.com/karmayogasoftware/karmayoga/releases/download/v0.3.4/karma-0.3.4-linux-x86_64.tar.gz"
      sha256 "505e1791b58c5a56422369c991c4445e1dd1ab3e180df5049d1f7c2226628de5"
    end
    on_arm do
      url "https://github.com/karmayogasoftware/karmayoga/releases/download/v0.3.4/karma-0.3.4-linux-aarch64.tar.gz"
      sha256 "3e8a8a4ff45c4abe8ea398748b0240f2310f818ef0b34b12c884bb387fc81798"
    end
  end

  def install
    bin.install "karma"
  end

  def caveats
    "Run karma init to set up your agents with Karma Yoga CLI"
  end

  test do
    assert_match "Karma Yoga CLI #{version}", shell_output("#{bin}/karma --version")
  end
end

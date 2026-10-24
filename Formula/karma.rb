class Karma < Formula
  desc "Run Claude Code and Codex agents from one terminal"
  homepage "https://karmayoga.dev"
  version "0.3.0"

  on_macos do
    url "https://github.com/karmayogasoftware/karmayoga/releases/download/v0.3.0/karma-0.3.0-macos-universal.tar.gz"
    sha256 "546c2754a57cd12a5ad391e51e67e3f0e04443b2c9cb032ef8dcd6689b15e648"
  end

  on_linux do
    on_intel do
      url "https://github.com/karmayogasoftware/karmayoga/releases/download/v0.3.0/karma-0.3.0-linux-x86_64.tar.gz"
      sha256 "62d2293cb1275ea0d95b22560e4311880eee69bcdcf478e5f1436692d34d02f8"
    end
    on_arm do
      url "https://github.com/karmayogasoftware/karmayoga/releases/download/v0.3.0/karma-0.3.0-linux-aarch64.tar.gz"
      sha256 "1e9678d8af03692543df72db35b2e9fb67e9edb002bb069432ee945ec5c81d85"
    end
  end

  def install
    bin.install "karma"
  end

  def caveats
    "Run karma init to set up your tools."
  end

  test do
    assert_match "Karma Yoga CLI #{version}", shell_output("#{bin}/karma --version")
  end
end

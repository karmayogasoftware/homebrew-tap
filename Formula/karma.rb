class Karma < Formula
  desc "Run Claude Code and Codex agents from one terminal"
  homepage "https://karmayoga.dev"
  version "0.3.2"

  on_macos do
    url "https://github.com/karmayogasoftware/karmayoga/releases/download/v0.3.2/karma-0.3.2-macos-universal.tar.gz"
    sha256 "98914bd5e0bdaad66beed0797f86b36b1e4763b3cc9c1f36e27c43d41ecdb5c7"
  end

  on_linux do
    on_intel do
      url "https://github.com/karmayogasoftware/karmayoga/releases/download/v0.3.2/karma-0.3.2-linux-x86_64.tar.gz"
      sha256 "eaf23641595190b2e0f1281db9b1c73a7d7f92a0c1bfc9755cdc7a19c91c77c3"
    end
    on_arm do
      url "https://github.com/karmayogasoftware/karmayoga/releases/download/v0.3.2/karma-0.3.2-linux-aarch64.tar.gz"
      sha256 "8b69f9aea2fee88f7c434f7e5dfd975bf0756f58e914e3ab8874a669f616b041"
    end
  end

  def install
    bin.install "karma"
  end

  def caveats
    "Run karma init to set up your tools"
  end

  test do
    assert_match "Karma Yoga CLI #{version}", shell_output("#{bin}/karma --version")
  end
end

class Karma < Formula
  desc "Run Claude Code and Codex agents from one terminal"
  homepage "https://karmayoga.dev"
  version "0.3.3"

  on_macos do
    url "https://github.com/karmayogasoftware/karmayoga/releases/download/v0.3.3/karma-0.3.3-macos-universal.tar.gz"
    sha256 "a3ba837cd74caf3ecf4d093d5c2af8d93926995b41b5312984b99b4333191be2"
  end

  on_linux do
    on_intel do
      url "https://github.com/karmayogasoftware/karmayoga/releases/download/v0.3.3/karma-0.3.3-linux-x86_64.tar.gz"
      sha256 "d6ec31092a99089337269936b2c92e08359f21a89f6f4d411279d9f74a5a880b"
    end
    on_arm do
      url "https://github.com/karmayogasoftware/karmayoga/releases/download/v0.3.3/karma-0.3.3-linux-aarch64.tar.gz"
      sha256 "698fca0504d522e2059fb2bd4f233d0036827701280fc045088ec646f83a46ae"
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

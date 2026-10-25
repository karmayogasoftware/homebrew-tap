class Karma < Formula
  desc "Run Claude Code and Codex agents from one terminal"
  homepage "https://karmayoga.dev"
  version "0.3.1"

  on_macos do
    url "https://github.com/karmayogasoftware/karmayoga/releases/download/v0.3.1/karma-0.3.1-macos-universal.tar.gz"
    sha256 "72cd95dac6f6297c245e7a5b8838a8d810be29b6ad6ef3ce5058ca1313a731fe"
  end

  on_linux do
    on_intel do
      url "https://github.com/karmayogasoftware/karmayoga/releases/download/v0.3.1/karma-0.3.1-linux-x86_64.tar.gz"
      sha256 "72ba9002ec23a7261ae1c0a174d90dce8f2388aefc109c9a37dc4b91dc3b462c"
    end
    on_arm do
      url "https://github.com/karmayogasoftware/karmayoga/releases/download/v0.3.1/karma-0.3.1-linux-aarch64.tar.gz"
      sha256 "e050e4bc40bccf9ab69e31778928cc6f4198b408b771a12c636bc8ad310ad9af"
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

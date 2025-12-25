class ReminderCli < Formula
  desc "A CLI reminder tool with cron support and system notifications"
  homepage "https://github.com/Maidang1/reminder-cli"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.9.0/reminder-cli-aarch64-apple-darwin.tar.gz"
      sha256 "9734787663acd746e7c380901bf3f4b1a1b869d6ca5d09bebbaa58c011438c0a"
    else
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.9.0/reminder-cli-x86_64-apple-darwin.tar.gz"
      sha256 "4347f04f77817797651ba090e042f6c920c30f73c74d3584dab47748f4863023"
    end
  end

  on_linux do
    url "https://github.com/Maidang1/reminder-cli/releases/download/v0.9.0/reminder-cli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "644d55151ddb30ea6c41f856c50f7d66f0701f9893b6e1d6538bb1b2b7c4184c"
  end

  def install
    bin.install "reminder"
    bin.install "rem"
  end

  test do
    system "#{bin}/reminder", "--help"
    system "#{bin}/rem", "--help"
  end
end

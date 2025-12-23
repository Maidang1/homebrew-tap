class ReminderCli < Formula
  desc "A CLI reminder tool with cron support and system notifications"
  homepage "https://github.com/Maidang1/reminder-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.7.0/reminder-cli-aarch64-apple-darwin.tar.gz"
      sha256 "b2046e69958eaee4dd6de75f6f3874b618fad1618a4b7588b447bf8cd7959b07"
    else
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.7.0/reminder-cli-x86_64-apple-darwin.tar.gz"
      sha256 "781ebd120c3864ea345f29139cc4d226029776f37be2f3f511823dff9b1b8c3e"
    end
  end

  on_linux do
    url "https://github.com/Maidang1/reminder-cli/releases/download/v0.7.0/reminder-cli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8bcb3987c5b226e9e76c52a36598811e4c3537c100d1732913104b2c73cf68ec"
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

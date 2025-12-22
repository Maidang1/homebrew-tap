class ReminderCli < Formula
  desc "A CLI reminder tool with cron support and system notifications"
  homepage "https://github.com/Maidang1/reminder-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.2.0/reminder-cli-aarch64-apple-darwin.tar.gz"
      sha256 "f2a7df7d064671b89575723debf6b2788a931cbeddb6eddb59fb619cba7c97f3"
    else
      url "https://github.com/Maidang1/reminder-cli/releases/download/v0.2.0/reminder-cli-x86_64-apple-darwin.tar.gz"
      sha256 "2b2d92c68f63304eaa48019b19f4e14eed107033a15aa59d211c1abc130300ed"
    end
  end

  on_linux do
    url "https://github.com/Maidang1/reminder-cli/releases/download/v0.2.0/reminder-cli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "af51a926a99366123cb4a5be7d9ab0410bee300bdd2e041146d7bd1303cf2033"
  end

  def install
    bin.install "reminder"
  end

  test do
    system "#{bin}/reminder", "--help"
  end
end

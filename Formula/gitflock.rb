class Gitflock < Formula
  desc "Manage multiple git repositories at once"
  homepage "https://git.fluidware.it/utils/gitflock"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://git.fluidware.it/api/v4/projects/utils%2Fgitflock/packages/generic/gitflock/v0.5.1/gitflock-darwin-arm64.tar.gz"
      sha256 "f45c8b3593b9509e11013252535a37df270b891e782eb7371e4e8d6e157cea18"
    end
    on_intel do
      url "https://git.fluidware.it/api/v4/projects/utils%2Fgitflock/packages/generic/gitflock/v0.5.1/gitflock-darwin-amd64.tar.gz"
      sha256 "d99ac4b94cfae069ca787f6fee44c845153dda694464c7f24cdc5babad20d604"
    end
  end

  on_linux do
    on_arm do
      url "https://git.fluidware.it/api/v4/projects/utils%2Fgitflock/packages/generic/gitflock/v0.5.1/gitflock-linux-arm64.tar.gz"
      sha256 "820fb96043d494537c2e61fe8ea8f3550b19f61041b2b4f06f0180a7bfcf23a7"
    end
    on_intel do
      url "https://git.fluidware.it/api/v4/projects/utils%2Fgitflock/packages/generic/gitflock/v0.5.1/gitflock-linux-amd64.tar.gz"
      sha256 "c1fda1096bb14189932778ff5fd836b81b100bbcb03ef7d3d6520da56682aac1"
    end
  end

  def install
    bin.install Dir["gitflock-*"].first => "gitflock"
  end

  def caveats
    <<~EOS
      Add the following in your ~/.zshrc or ~/.profile:

        alias gfl=gitflock
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitflock --version")
  end
end

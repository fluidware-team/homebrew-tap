class Gitflock < Formula
  desc "Manage multiple git repositories at once"
  homepage "https://git.fluidware.it/utils/gitflock"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://git.fluidware.it/api/v4/projects/utils%2Fgitflock/packages/generic/gitflock/v0.4.0/gitflock-darwin-arm64.tar.gz"
      sha256 "10d7a45319c4e14212b432525865c827c75fac02c919911ded5417d5c9f17391"
    end
    on_intel do
      url "https://git.fluidware.it/api/v4/projects/utils%2Fgitflock/packages/generic/gitflock/v0.4.0/gitflock-darwin-amd64.tar.gz"
      sha256 "475d346a466a4797f4edffd56ae2da5b2ecdb09c2e5bcf2763189096c6c1a5d2"
    end
  end

  on_linux do
    on_arm do
      url "https://git.fluidware.it/api/v4/projects/utils%2Fgitflock/packages/generic/gitflock/v0.4.0/gitflock-linux-arm64.tar.gz"
      sha256 "ad242b78de5088b128ddae7c7774259d3cd71086073463954a78fbdc2d62e726"
    end
    on_intel do
      url "https://git.fluidware.it/api/v4/projects/utils%2Fgitflock/packages/generic/gitflock/v0.4.0/gitflock-linux-amd64.tar.gz"
      sha256 "987f4f4f1981f7dd543e1ca9b6e8f7a5d3d34eb3c0f89ce612819e7de7a44ab7"
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

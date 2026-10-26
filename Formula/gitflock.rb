class Gitflock < Formula
  desc "Manage multiple git repositories at once"
  homepage "https://git.fluidware.it/utils/gitflock"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://git.fluidware.it/api/v4/projects/utils%2Fgitflock/packages/generic/gitflock/v0.5.0/gitflock-darwin-arm64.tar.gz"
      sha256 "9001d70b5778895e55d9dcec888fd08c4aa428040b939f2c61e943cacf3c9b54"
    end
    on_intel do
      url "https://git.fluidware.it/api/v4/projects/utils%2Fgitflock/packages/generic/gitflock/v0.5.0/gitflock-darwin-amd64.tar.gz"
      sha256 "b27b783bad37e62e14d8c6a8e23f631e9948002705e77de8c30732f98564f0f8"
    end
  end

  on_linux do
    on_arm do
      url "https://git.fluidware.it/api/v4/projects/utils%2Fgitflock/packages/generic/gitflock/v0.5.0/gitflock-linux-arm64.tar.gz"
      sha256 "e219e10eb2188abda87c06503596ed36fb421ae4f40fb74bf8b2538b7a276bdb"
    end
    on_intel do
      url "https://git.fluidware.it/api/v4/projects/utils%2Fgitflock/packages/generic/gitflock/v0.5.0/gitflock-linux-amd64.tar.gz"
      sha256 "29fd82e4af544b1a73d898a177063e6c3229a1053823068b3bb1d4cefaa49156"
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

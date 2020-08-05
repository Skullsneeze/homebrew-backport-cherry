class BackportCherry < Formula
  desc "Cherry picks a commit and applies is to the tags you define"
  homepage "https://github.com/Skullsneeze/backport-cherry"
  url "https://github.com/Skullsneeze/backport-cherry/archive/v1.0.0.tar.gz"
  sha256 "3d2027dfabe9f27a3050d7d23abf7bd48d33c63095738b5ef07f00d1af0e5c14"
  license "MIT"

  # hub dependency allows for automated PR creation.
  depends_on "hub"

  def install
    bin.install "backport-cherry"
  end

  test do
    system "#{bin}/backport-cherry"
  end
end

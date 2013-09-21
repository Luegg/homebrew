require 'formula'

class Fswatch < Formula
  homepage 'https://github.com/alandipert/fswatch'
  url 'https://github.com/wildone/fswatch.git'
  version '0.0.1-wildone'

  def install
    system 'make'
    bin.install 'fswatch'
  end

  test do
    system "fswatch 2>&1| grep 'You must specify a directory to watch'"
  end
end

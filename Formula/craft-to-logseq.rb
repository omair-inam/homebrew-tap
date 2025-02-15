class CraftToLogseq < Formula
    desc "Convert Craft markdown documents to Logseq markdown files"
    homepage "https://github.com/omair-inam/craft-to-logseq"
    url "https://github.com/omair-inam/craft-to-logseq/archive/refs/tags/v0.1.tar.gz"
    sha256 "730a100da2ba973c34f7f9796fd6d5df1288fb0aff48e5c7a1ec26a9b88babe8"
    version "0.1"
    license "MIT"
  
    depends_on "node"
  
    def install
      bin.install "craft-to-logseq"
      system "npm", "install", "-g", "longdown"
    end
  
    test do
      system "#{bin}/craft-to-logseq", "--help"
    end
  end
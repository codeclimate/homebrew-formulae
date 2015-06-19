require "formula"

class Codeclimate < Formula
  homepage "https://github.com/codeclimate/codeclimate"
  version "0.0.6"

  url "https://github.com/codeclimate/codeclimate/archive/v0.0.6.tar.gz"
  sha1 "77870ccbea310b0a966b35edeff9962e8217c42b"

  def install
    # Alter PATH to ensure `docker' is available
    system "env", \
      "PATH=#{HOMEBREW_PREFIX}/bin:#{ENV["PATH"]}", \
      "PREFIX=#{prefix}", "make", "install"
  end

  test do
    system "codeclimate", "help"
  end
end

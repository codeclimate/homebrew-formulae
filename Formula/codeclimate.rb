require "formula"

class Codeclimate < Formula
  CODECLIMATE_VERSION = "0.22.1".freeze

  homepage "https://github.com/codeclimate/codeclimate"
  version CODECLIMATE_VERSION

  url "https://github.com/codeclimate/codeclimate/archive/v#{CODECLIMATE_VERSION}.tar.gz"
  sha1 "6d9384c7a7f01a773ea85f167e5678e341081e7d"

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

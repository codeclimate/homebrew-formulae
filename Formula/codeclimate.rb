require "formula"

class Codeclimate < Formula
  CODECLIMATE_VERSION = "0.10.0".freeze

  homepage "https://github.com/codeclimate/codeclimate"
  version CODECLIMATE_VERSION

  url "https://github.com/codeclimate/codeclimate/archive/v#{CODECLIMATE_VERSION}.tar.gz"
  sha1 "edb726a1e51d10fbdd1382a38f7fc4bed6a326df"

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

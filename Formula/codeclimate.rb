class Codeclimate < Formula
  desc "Code Climate CLI"
  homepage "https://github.com/codeclimate/codeclimate"
  url "https://github.com/codeclimate/codeclimate/archive/v0.85.17.tar.gz"
  sha256 "89c5dec54e68f90a67fa24455e152c90d97e09b2ddba0a3304875f86e17e64dd"

  def install
    # Alter PATH to ensure `docker' is available
    if Formula["docker"].linked_keg.exist?
      ENV.prepend_path "PATH", Formula["docker"].opt_bin
    else
      ENV.prepend_path "PATH", "/usr/local/bin"
    end

    ENV["PREFIX"] = prefix

    system "make", "install"
  end

  test do
    system "codeclimate", "help"
  end
end

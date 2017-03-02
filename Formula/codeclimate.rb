class Codeclimate < Formula
  desc "Code Climate CLI"
  homepage "https://github.com/codeclimate/codeclimate"
  url "https://github.com/codeclimate/codeclimate/archive/v0.51.1.tar.gz"
  sha256 "23c380bf3f91ab19b87a72fafb2b42c20a1e06f0e2b2170e015973e68e7738d4"

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

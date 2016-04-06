class Codeclimate < Formula
  desc "Code Climate CLI"
  homepage "https://github.com/codeclimate/codeclimate"
  url "https://github.com/codeclimate/codeclimate/archive/v0.24.2.tar.gz"
  sha256 "f6ab47d602c8a6ec2d4e9f86df829cc31c3059ad025058c7646499b154242351"

  def install
    # Alter PATH to ensure `docker' is available
    if Formula["docker"].linked_keg.exist?
      ENV.prepend_path "PATH", Formula["docker"].opt_bin
    else
      ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/bin"
    end

    ENV["PREFIX"] = prefix

    system "make", "install"
  end

  test do
    system "codeclimate", "help"
  end
end

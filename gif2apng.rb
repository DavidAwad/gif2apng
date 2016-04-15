class Gif2apng < Formula
  desc ""
  homepage "http://github.com/davidawad/homebrew-gif2apng"
  url "https://github.com/davidawad/homebrew-gif2apng/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "12fb705e32e0cc8d6415be9fc8355be8d2b0fe5286d40094d4da37ce0652e1de"

  def install
      puts "Thanks for installing! Swag and Marriment await - David Awad."
      # chmod u+x gif2apng
      sudo mv gif2apng /usr/local/bin
      #
        # ENV.deparallelize  # if your formula fails when building in parallel

		# Remove unrecognized options if warned by configure
	  system "./configure", "--disable-debug",
						  "--disable-dependency-tracking",
						  "--disable-silent-rules",
						  "--prefix=#{prefix}"
	  # system "cmake", ".", *std_cmake_args
	  system "make", "install" # if this fails, try separate make/make install steps

  end

end

class Gif2apng < Formula
  desc "library to convert gif files to apng"
  homepage "https://sourceforge.net/projects/apng2gif/"
  # url "https://github.com/davidawad/homebrew-gif2apng/archive/1.0.0.tar.gz"
  version "1.0.0"
  # sha256 "12fb705e32e0cc8d6415be9fc8355be8d2b0fe5286d40094d4da37ce0652e1de"


  if OS.mac?
    url "https://github.com/DavidAwad/homebrew-gif2apng/tree/master/dist/apng2gif-1.7-bin-macosx/gif2apng"
    # sha256 "f7e2c42538fc16e3bd43623a74f1557af26d8864bd18041ab42c5477d3d78421"
  elsif OS.linux?
    url "https://github.com/DavidAwad/homebrew-gif2apng/tree/master/dist/apng2gif-1.7-bin-linux/gif2apng"
    # sha256 "1b8ccfceec78436ecf9f2e27998a7b91050d4a7f46918ef48b7de5d3aa4a8e5b"
  end

  def install
      puts "Thanks for installing! Swag and Merriment await - David Awad."
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

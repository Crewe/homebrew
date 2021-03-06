require 'formula'

class Sary < Formula
  url 'http://sary.sourceforge.net/sary-1.2.0.tar.gz'
  sha1 'cfc671ca99d58df4ed8985408499f96579af18f3'
  homepage 'http://sary.sourceforge.net/'

  depends_on 'pkg-config' => :build
  depends_on 'glib'

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--mandir=#{man}"
    system "make install"
  end
end

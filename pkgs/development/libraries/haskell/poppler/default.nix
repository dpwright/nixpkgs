{ cabal, cairo, gdk_pixbuf, glib, gtk, gtk2hsBuildtools, libc, mtl
, pango, popplerGlib
}:

cabal.mkDerivation (self: {
  pname = "poppler";
  version = "0.12.3";
  sha256 = "1ny2r1cpsshpg00w6bd0f5mw26xsy99l7dgx2xq8f01zcwdy4nrp";
  buildDepends = [ cairo glib gtk mtl ];
  buildTools = [ gtk2hsBuildtools ];
  extraLibraries = [ libc ];
  pkgconfigDepends = [ cairo gdk_pixbuf glib gtk pango popplerGlib ];
  meta = {
    homepage = "http://www.haskell.org/gtk2hs/";
    description = "Binding to the Poppler";
    license = self.stdenv.lib.licenses.gpl2;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.ianwookim ];
  };
})
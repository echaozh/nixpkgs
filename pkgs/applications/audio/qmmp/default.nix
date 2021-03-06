{ stdenv, fetchurl, cmake, qt4, pkgconfig, x11
# transports
, curl, libmms
# input plugins
, libmad, taglib, libvorbis, libogg, flac, libmpcdec, libmodplug, libsndfile
, libcdio, cdparanoia, libcddb, faad2, ffmpeg, wildmidi
# output plugins
, alsaLib, pulseaudio
# effect plugins
, libsamplerate
}:

# Additional plugins that can be added:
#  wavpack (http://www.wavpack.com/)
#  gme (Game music support)
#  Ogg Opus support
#  BS2B effect plugin (http://bs2b.sourceforge.net/)
#  JACK audio support
#  ProjectM visualization plugin

# To make MIDI work we must tell Qmmp what instrument configuration to use (and
# this can unfortunately not be set at configure time):
# Go to settings (ctrl-p), navigate to the WildMidi plugin and click on
# Preferences. In the instrument configuration field, type the path to
# /nix/store/*wildmidi*/etc/wildmidi.cfg (or your own custom cfg file).

# Qmmp installs working .desktop file(s) all by itself, so we don't need to
# handle that.

stdenv.mkDerivation rec {
  name = "qmmp-0.7.5";

  src = fetchurl {
    url = "http://qmmp.ylsoftware.com/files/${name}.tar.bz2";
    sha256 = "0ryg4hns5zi9swn2q4vxjya3i4drdqfzycngwzd6fdl176lswrk0";
  };

  buildInputs =
    [ # basic requirements
      cmake qt4 pkgconfig x11
      # transports
      curl libmms
      # input plugins
      libmad taglib libvorbis libogg flac libmpcdec libmodplug libsndfile
      libcdio cdparanoia libcddb faad2 ffmpeg wildmidi
      # output plugins
      alsaLib pulseaudio
      # effect plugins
      libsamplerate
    ];

  meta = with stdenv.lib; {
    description = "Qt-based audio player that looks like Winamp";
    homepage = http://qmmp.ylsoftware.com/;
    license = licenses.gpl2;
    platforms = platforms.linux;
    maintainers = [ maintainers.bjornfor ];
    repositories.svn = http://qmmp.googlecode.com/svn/;
  };
}

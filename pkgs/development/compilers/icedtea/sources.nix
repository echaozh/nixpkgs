# This file is autogenerated from update.py in the same directory.
{
  icedtea7 = rec {
    branch = "2.4";
    version = "${branch}.6";

    url = "http://icedtea.wildebeest.org/download/source/icedtea-${version}.tar.xz";
    sha256 = "06gsrci7934xmlddmi9wpawpgb1mp7c8cx3jmjsq91kdljmvqcy3";

    hg_url = "http://icedtea.classpath.org/hg/release/icedtea7-forest-${branch}";

    bundles = {
      openjdk = rec {
        changeset = "b028e58c1b77";
        url = "${hg_url}/archive/${changeset}.tar.gz";
        sha256 = "e6be030ac5934781d9682dc3108980fa7d2330c32da3cea4ae74df11fbaa92f2";
      };

      corba = rec {
        changeset = "48ef1bb6d120";
        url = "${hg_url}/corba/archive/${changeset}.tar.gz";
        sha256 = "2fcfe699797154da8b4ba5242e32468b2f3f42a0cb17039915bfb1f84887a5b6";
      };

      jaxp = rec {
        changeset = "e0ba4b9a8b91";
        url = "${hg_url}/jaxp/archive/${changeset}.tar.gz";
        sha256 = "e7014057721b8392676bd24760c3f7b3dd40548abb3c8dfbe8df2fa04d7c1fca";
      };

      jaxws = rec {
        changeset = "4bd947cd146b";
        url = "${hg_url}/jaxws/archive/${changeset}.tar.gz";
        sha256 = "17ed5278872ad0c9ec3a849caf1480e5942b714e35c9a4a949d09daac4b34c5a";
      };

      jdk = rec {
        changeset = "b5282042aae0";
        url = "${hg_url}/jdk/archive/${changeset}.tar.gz";
        sha256 = "ab9b0e973625604b12a2f027cb2a6f9bc5160ef7df55408da6ca8a9c3aaed2d5";
      };

      langtools = rec {
        changeset = "06eeb77dac24";
        url = "${hg_url}/langtools/archive/${changeset}.tar.gz";
        sha256 = "a67e62618c70ef9190b2aef2b49be9d79624be9363bda258828b17494e092477";
      };

      hotspot = rec {
        changeset = "172674e0ab65";
        url = "${hg_url}/hotspot/archive/${changeset}.tar.gz";
        sha256 = "2aadfe9b1848a619bd2d35f802b3e71ef5286e7822f9e7b02ce2539ca817d9b0";
      };
    };
  };
}

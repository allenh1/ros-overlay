FROM gentoo/stage3-amd64

ENV FEATURES sign
ENV PORTAGE_GPG_DIR ~/.gnupg/

RUN mkdir -p /usr/portage/gentoo && emerge-webrsync && emerge --sync && \
    eselect profile set 12 && emerge app-crypt/gnupg repoman \
    dev-vcs/git --autounmask-write && \
    mkdir -p /usr/local/portage && \
    printf '\nPORTDIR_OVERLAY="/usr/local/portage"\n' >> /etc/portage/make.conf && \
    mkdir /etc/portage/repos.conf && \
    echo "[ros-overlay]" > /etc/portage/repos.conf/ros-overlay.conf &&\
    echo "location = /usr/local/portage" >> /etc/portage/repos.conf/ros-overlay.conf &&\
    echo "sync-type = git" >> /etc/portage/repos.conf/ros-overlay.conf && \
    echo "sync-uri = https://github.com/ros/ros-overlay" >> /etc/portage/repos.conf/ros-overlay.conf && \
    echo "auto-sync = yes" >> /etc/portage/repos.conf/ros-overlay.conf && \
    echo "masters = gentoo" >> /etc/portage/repos.conf/ros-overlay.conf && \
    echo 'ACCEPT_KEYWORDS=~amd64' >> /etc/portage/make.conf && \
    printf 'USE="X compat -bindist"\n' >> /etc/portage/make.conf && \
    eselect profile set default/linux/amd64/17.0/desktop && \
    emaint sync -r ros-overlay && \
    emerge --oneshot portage && \
    echo "ros-*/* PYTHON_TARGETS: -* python2_7" >> /etc/portage/package.use/iputils && \
    echo "ros-*/* PYTHON_SINGLE_TAGET: *- python2_7" >> /etc/portage/package.use/iputils && \
    echo "sys-libs/zlib minizip" >> /etc/portage/package.use/iputils && \
    echo "sci-libs/vtk rendering" >> /etc/portage/package.use/iputils && \
    echo "dev-libs/boost python" >> /etc/portage/package.use/iputils && \
    perl-cleaner --reallyall && \
    emerge -C openssl && \
    printf 'USE="${USE} fontconfig ruby_targets_ruby25"\n' >> \
    /etc/portage/make.conf && \
    emerge --jobs openssl dev-libs/boost dev-util/cmake sys-devel/llvm-common \
    dev-qt/qtchooser dev-libs/icu dev-util/ninja \
    dev-python/nose dev-python/numpy dev-python/docutils \
    dev-python/ply dev-python/netifaces dev-python/ipaddress \
    dev-python/pycparser dev-util/meson dev-python/python-dateutil \
    dev-python/catkin_pkg dev-python/rosdistro dev-python/rosdep \
    virtual/perl-IO dev-lang/nasm dev-perl/URI dev-perl/HTML-Parser \
    sys-devel/bc dev-libs/apr virtual/jpeg media-libs/lcms \
    dev-libs/tinyxml sys-devel/autoconf-archive app-text/poppler-data \
    dev-libs/lzo media-libs/libogg app-arch/rpm2targz media-libs/libpng \
    dev-libs/gobject-introspection-common dev-libs/libbsd media-libs/jbig2dec \
    sys-libs/mtdev x11-themes/hicolor-icon-theme media-libs/alsa-lib \
    dev-python/empy app-text/libpaper dev-libs/libsodium dev-libs/vala-common \
    net-dns/libidn dev-util/scons dev-libs/double-conversion \
    dev-python/olefile dev-python/enum34 app-eselect/eselect-opengl \
    app-eselect/eselect-mesa app-eselect/eselect-wxwidgets \
    app-eselect/eselect-notify-send app-text/qpdf dev-perl/File-Listing \
    dev-perl/HTTP-Message virtual/python-ipaddress dev-python/pyasn1 \
    dev-python/asn1crypto dev-python/idna =app-text/docbook-xml-dtd-4.2-r2 \
    =app-text/docbook-xml-dtd-4.3-r1 =app-text/docbook-xml-dtd-4.4-r2 \
    virtual/perl-Carp virtual/perl-Encode dev-perl/LWP-MediaTypes \
    dev-perl/IO-HTML dev-perl/Encode-Locale x11-proto/xproto \
    dev-qt/qtcore dev-cpp/gtest dev-libs/libpthread-stubs \
    net-nds/openldap x11-proto/xf86vidmodeproto media-libs/openjpeg \
    x11-proto/xcb-proto x11-libs/xtrans x11-libs/libICE x11-libs/libSM \
    dev-libs/poco dev-libs/log4cxx dev-libs/apr-util app-arch/lz4 \
    dev-python/pillow dev-python/paramiko dev-python/pynacl dev-perl/Socket6 \
    dev-perl/XML-NamespaceSupport dev-perl/HTTP-Negotiate \
    dev-perl/HTTP-Cookies dev-perl/HTTP-Daemon dev-python/pycurl \
    dev-python/sip dev-python/backports dev-python/subprocess32 \
    dev-python/pytz dev-perl/WWW-RobotRules dev-perl/Tie-IxHash \
    app-portage/gentoolkit x11-libs/libX11 media-libs/assimp \
    dev-qt/qtxml x11-proto/kbproto x11-misc/util-macros \
    x11-proto/inputproto x11-misc/util-macros dev-libs/tinyxml2 \
    dev-lang/swig sys-libs/binutils-libs \
    && rm -f /usr/portage/distfiles/*.tar* \
    && rm -f /usr/portage/distfiles/*.zip*

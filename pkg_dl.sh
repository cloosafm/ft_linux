#!/bin/bash

# Define package list with expected versions
declare -A packages=(
    [acl]=2.2.52
    [attr]=2.4.47
    [autoconf]=2.69
    [automake]=1.15
    [bash]=4.3.30
    [bc]=1.06.95
    [binutils]=2.25.1
    [bison]=3.0.4
    [bzip2]=1.0.6
    [check]=0.10.0
    [coreutils]=8.24
    [dejagnu]=1.5.3
    [diffutils]=3.3
    [eudev]=3.1.2
    [e2fsprogs]=1.42.13
    [expat]=2.1.0
    [expect]=5.45
    [file]=5.24
    [findutils]=4.4.2
    [flex]=2.5.39
    [gawk]=4.1.3
    [gcc]=5.2.0
    [gdbm]=1.11
    [gettext]=0.19.5.1
    [glibc]=2.22
    [gmp]=6.0.0a
    [gperf]=3.0.4
    [grep]=2.21
    [groff]=1.22.3
    [grub]=2.02
    [gzip]=1.6
    [iana-etc]=2.30
    [inetutils]=1.9.4
    [intltool]=0.51.0
    [iproute2]=4.2.0
    [kbd]=2.0.3
    [kmod]=21
    [less]=458
    [libcap]=2.24
    [libpipeline]=1.4.1
    [libtool]=2.4.6
    [m4]=1.4.17
    [make]=4.1
    [man-db]=2.7.2
    [manpages]=4.02
    [mpc]=1.0.3
    [mpfr]=3.1.3
    [ncurses]=6.0
    [patch]=2.7.5
    [perl]=5.22.0
    [pkg-config]=0.28
    [procps]=3.3.11
    [psmisc]=22.21
    [readline]=6.3
    [sed]=4.2.2
    [shadow]=4.2.1
    [sysklogd]=1.5.1
    [sysvinit]=2.88dsf
    [tar]=1.28
    [tcl]=8.6.4
    [texinfo]=6.0
    [tzdata]=2015f
    [util-linux]=2.27
    [vim]=7.4
    [xz-utils]=5.2.1
    [zlib1g]=1.2.8
)

# Update package list
sudo apt update

# Install correct versions
for package in "${!packages[@]}"; do
    sudo apt install -y "$package=${packages[$package]}"
done

#!/bin/sh

#Get all required m4 macros required for configure
libtoolize -ci
intltoolize
aclocal

#generate configure
autoconf

#Generate config.h.in
autoheader

#Generate Makefile.in's
automake -ac

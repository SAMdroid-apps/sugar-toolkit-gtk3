#!/bin/sh

# Errors that we may fix in the future
#
# C0301 Line length
# W0603 Using the global statement
# W0201 Attribute defined outside __init__
# R0201 Method could be a function
TODO="C0301,W0603,W0201,R0201"

# Errors we don't like
#
# W0613 Unused argument (glib signals)
# W0511 - FIXME/TODO/XXX
DISABLE="W0613,W0511"

MSGS="$TODO,$DISABLE"
ARG="sugar"

pylint \
  --disable-all \
  --include-ids=y \
  --enable-variables=y \
  --enable-exceptions=y \
  --enable-miscellaneous=y \
  --enable-format=y \
  --enable-classes=y \
  --disable-msg=$MSGS \
  --reports=n \
  --enable-metrics=n \
  --indent-string="	" \
  --ignore="SVGdraw.py" \
  $ARG

inherit  externalsrc

FILESEXTRAPATHS:prepend := "${THISDIR}/compulab/imx8mq:"

EXTERNALSRC:pn-linux-imx = "${OE_BASE}/workspace/u-boot-imx"

include compulab/imx8mq.inc

SRCREV="${AUTOREV}"
BRANCH="a1miro/lf-2024.04"

# Add URL from the bitbucket
#SRC_URI = "git://git@bitbucket.quantumdx.com:7999/mk11/u-boot.git;branch=${BRANCH};protocol=ssh;"

COMPATIBLE_MACHINE:cl-som-imx8 = "cl-som-imx8"
FILESEXTRAPATHS:prepend := "${THISDIR}/compulab/imx8mq:"

include compulab/imx8mq.inc

#SRCREV="2af9c8d56646ab124500f4f7ea0dbbb210e42bd4"
SRCREV="${AUTOREV}"
BRANCH="wip.amironenko.compulab_base_port"

# Add URL from the bitbucket
SRC_URI = "git://git@bitbucket.quantumdx.com:7999/mk11/u-boot.git;branch=${BRANCH};protocol=ssh;"

COMPATIBLE_MACHINE = "(cl-som-imx8)"
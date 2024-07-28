inherit externalsrc

FILESEXTRAPATHS:prepend := "${THISDIR}:"

EXTERNALSRC:pn-linux-imx = "${OE_BASE}/workspace/linux-imx"


SRCREV="${AUTOREV}"
LINUX_VERSION = "6.6.23"
SRCBRANCH = "a1miro/lf-6.6.y"
SCMVERSION = "y"
IMX_KERNEL_CONFIG_AARCH64 = "compulab_v8_defconfig"

# Add URL from the bitbucket
#KERNEL_SRC = "git://git@github.com/a1miro/linux-imx.git;protocol=ssh;branch=${SRCBRANCH}"
#SRC_URI = "${KERNEL_SRC}"

COMPATIBLE_MACHINE:cl-som-imx8 = "cl-som-imx8"
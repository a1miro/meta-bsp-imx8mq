inherit externalsrc

FILESEXTRAPATHS:prepend := "${THISDIR}:"

# FIXME: This is a workaround. It gets project root path from the build directory
# it's okay if the build directory under the project root, but it will be a problem
# otherwise.
POKYROOT="${@os.path.abspath(os.path.join(os.getcwd(), ".."))}"
LINUX_IMX_SRCPATH = "${POKYROOT}/workspace/linux-imx"

EXTERNALSRC:pn-linux-imx-headers = "${LINUX_IMX_SRCPATH}"

SRCREV="${AUTOREV}"
LINUX_VERSION = "6.6.23"
#SRCREV="e3cb0cceb19cb71c5c2036e2427da085710539f3"
SRCBRANCH = "a1miro/lf-6.6.y"
SCMVERSION = "y"
IMX_KERNEL_CONFIG_AARCH64 = "compulab_v8_defconfig"

# Add URL from the bitbucket
#KERNEL_SRC = "git://git@github.com/a1miro/linux-imx.git;protocol=ssh;branch=${SRCBRANCH}"
#SRC_URI = "${KERNEL_SRC}"
SRC_URI = "file://${LINUX_IMX_SRCPATH}"
S = "${LINUX_IMX_SRCPATH}"

COMPATIBLE_MACHINE:cl-som-imx8 = "cl-som-imx8"

python () {
    # Just to make sure that the source directory exists
    linux_imx_srcpath = d.getVar('LINUX_IMX_SRCPATH')
    if not os.path.exists(linux_imx_srcpath):
        bb.fatal("The linux-imx source directory does not exist: %s" % linux_imx_srcpath)
}

do_install:prepend() {
    # The oe_runmake is set to run from ${B} directory, source directory is usually ${WORKDIR}/git.
    # in our case we need to run it from the external source directory in workspace folder
    cd ${S}
}



inherit  externalsrc

FILESEXTRAPATHS:prepend := "${THISDIR}/compulab/imx8mq:"
# FIXME: This is a workaround. It gets project root path from the build directory
# it's okay if the build directory under the project root, but it will be a problem
# otherwise.
POKYROOT="${@os.path.abspath(os.path.join(os.getcwd(), ".."))}"
U_BOOT_IMX_SRCPATH = "${POKYROOT}/workspace/u-boot-imx"
EXTERNALSRC:pn-u-boot-imx = "${U_BOOT_IMX_SRCPATH}"

include compulab/imx8mq.inc

#SRCREV="${AUTOREV}"
#BRANCH="a1miro/lf-2024.04"

# Add URL from the bitbucket
#SRC_URI = "git://git@bitbucket.quantumdx.com:7999/mk11/u-boot.git;branch=${BRANCH};protocol=ssh;"

COMPATIBLE_MACHINE:cl-som-imx8 = "cl-som-imx8"

python () {
    # Just to make sure that the source directory exists
    u_boot_imx_srcpath = d.getVar('U_BOOT_IMX_SRCPATH')
    if not os.path.exists(u_boot_imx_srcpath):
        bb.fatal("The u-boot-imx source directory does not exist: %s" % u_boot_imx_srcpath)
}


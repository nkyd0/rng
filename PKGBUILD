pkgname=rng
pkgver=1.2.0
pkgrel=1
pkgdesc="rng basically"
arch=('any')
source=("rng.sh")
sha512sums=("SKIP")

package() {
	mkdir -p "${pkgdir}/usr/bin"
	cp "${srcdir}/rng.sh" "${pkgdir}/usr/bin/rng"
	chmod +x "${pkgdir}/usr/bin/rng"
}


(define-module (odoo)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages)
  #:use-module (gnu packages adns)
  #:use-module (gnu packages aidc)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages astronomy)
  #:use-module (gnu packages attr)
  #:use-module (gnu packages backup)
  #:use-module (gnu packages base)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages bdw-gc)
  #:use-module (gnu packages build-tools)
  #:use-module (gnu packages check)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages cpp)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crypto)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages dbm)
  #:use-module (gnu packages digest)
  #:use-module (gnu packages django)
  #:use-module (gnu packages djvu)
  #:use-module (gnu packages docker)
  #:use-module (gnu packages documentation)
  #:use-module (gnu packages enchant)
  #:use-module (gnu packages file)
  #:use-module (gnu packages fonts)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages gdb)
  #:use-module (gnu packages geo)
  #:use-module (gnu packages ghostscript)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages gnupg)
  #:use-module (gnu packages graphics)
  #:use-module (gnu packages graphviz)
  #:use-module (gnu packages gsasl)
  #:use-module (gnu packages gstreamer)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages haskell-xyz)
  #:use-module (gnu packages icu4c)
  #:use-module (gnu packages image)
  #:use-module (gnu packages image-processing)
  #:use-module (gnu packages imagemagick)
  #:use-module (gnu packages inkscape)
  #:use-module (gnu packages java)
  #:use-module (gnu packages jupyter)
  #:use-module (gnu packages kerberos)
  #:use-module (gnu packages libevent)
  #:use-module (gnu packages libffi)
  #:use-module (gnu packages libidn)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages llvm)
  #:use-module (gnu packages machine-learning)
  #:use-module (gnu packages man)
  #:use-module (gnu packages markup)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages monitoring)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages networking)
  #:use-module (gnu packages ninja)
  #:use-module (gnu packages node)
  #:use-module (gnu packages openstack)
  #:use-module (gnu packages pcre)
  #:use-module (gnu packages pdf)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages photo)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages protobuf)
  #:use-module (gnu packages python)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-compression)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-science)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages rdf)
  #:use-module (gnu packages readline)
  #:use-module (gnu packages regex)
  #:use-module (gnu packages rust-apps)
  #:use-module (gnu packages scanner)
  #:use-module (gnu packages sdl)
  #:use-module (gnu packages search)
  #:use-module (gnu packages serialization)
  #:use-module (gnu packages shells)
  #:use-module (gnu packages sphinx)
  #:use-module (gnu packages ssh)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages swig)
  #:use-module (gnu packages tcl)
  #:use-module (gnu packages terminals)
  #:use-module (gnu packages tex)
  #:use-module (gnu packages texinfo)
  #:use-module (gnu packages textutils)
  #:use-module (gnu packages time)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages video)
  #:use-module (gnu packages web)
  #:use-module (gnu packages wxwidgets)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages finance)
  #:use-module (guix packages)
  #:use-module (guix build-system cargo)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system pyproject)
  #:use-module (guix build-system python)
  #:use-module (guix download)
  #:use-module (guix hg-download)
  #:use-module (guix git-download)
  #:use-module (guix gexp)
  #:use-module (guix utils)
  #:use-module (srfi srfi-1)
  #:use-module (srfi srfi-26))

(define-public python-delegator.py
  (package
    (name "python-delegator.py")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "delegator.py" version))
       (sha256
        (base32 "06sjz2nzhvqflssw0qsf2kdxmphs4cbjwhp0kqb9prcsmgnrrk76"))))
    (build-system pyproject-build-system)
    (propagated-inputs (list python-pexpect))
    (home-page "https://github.com/kennethreitz/delegator")
    (synopsis "Subprocesses for Humans 2.0.")
    (description "Subprocesses for Humans 2.0.")
    (license license:expat)))

(define-public python-num2words
  (package
    (name "python-num2words")
    (version "0.5.13")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "num2words" version))
       (sha256
        (base32 "1kq948daphzcpl4islxjccza39kkpjzwwl4l8ifdg45zzcb4f1m3"))))
    (build-system pyproject-build-system)
    (propagated-inputs (list python-docopt))
    (native-inputs (list python-delegator.py))
    (home-page "https://github.com/savoirfairelinux/num2words")
    (synopsis "Modules to convert numbers to words. Easily extensible.")
    (description "Modules to convert numbers to words.  Easily extensible.")
    (license #f)))

(define-public python-odoo
  (let ((revision "0")
	(commit "70d64e3235735a659abb6ac06854ce43347320e0"))
    (package
      (name "python-odoo")
      (version "16.0")
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
	       (url "https://github.com/oca/ocb")
	       (commit commit)))
         (file-name (git-file-name name version))
         (sha256
	  (base32 "1mh86mwk5m5892iwaz64pfsfj810zv4zk37fvnzl3mpsillb92sz"))))
      (build-system python-build-system)
      (arguments (list #:tests? #f))
      (propagated-inputs
       (list python-babel
	     python-decorator
	     python-docutils
	     python-gevent
	     python-jinja2
	     python-lxml
	     python-libsass
	     python-mako
	     python-mock
	     python-ofxparse
	     python-passlib
	     python-pillow
	     python-polib
	     python-psutil
	     python-psycopg2
	     python-pydot
	     python-pyparsing
	     python-pypdf2
	     python-pyserial
	     python-pytz
	     python-pyusb
	     python-qrcode
	     python-reportlab
	     python-requests
             python-stdnum
	     python-zeep
	     python-vobject
	     python-werkzeug
	     python-xlsxwriter
	     python-xlwt
             python-xlrd
	     python-num2words))
      (home-page "")
      (synopsis "")
      (description "")
      (license #f))))

python-odoo

;;; skewer-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "skewer-bower" "../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-bower.el"
;;;;;;  "1941ba2dcd512d4dee99652ae4999f3b")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-bower.el

(autoload 'skewer-bower-refresh "skewer-bower" "\
Update the package listing and packages synchronously.

\(fn)" t nil)

(autoload 'skewer-bower-load "skewer-bower" "\
Dynamically load a library from bower into the current page.

\(fn PACKAGE &optional VERSION)" t nil)

;;;***

;;;### (autoloads nil "skewer-css" "../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-css.el"
;;;;;;  "626f6351f4cf457b5705dcf019a5de27")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-css.el

(autoload 'skewer-css-mode "skewer-css" "\
Minor mode for interactively loading new CSS rules.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "skewer-html" "../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-html.el"
;;;;;;  "adec1378cc494dc9bfbef1bc04a7ea2b")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-html.el

(autoload 'skewer-html-mode "skewer-html" "\
Minor mode for interactively loading new HTML.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "skewer-mode" "../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-mode.el"
;;;;;;  "f258718efec4b87841d0869032157cf5")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-mode.el

(autoload 'list-skewer-clients "skewer-mode" "\
List the attached browsers in a buffer.

\(fn)" t nil)

(autoload 'skewer-mode "skewer-mode" "\
Minor mode for interacting with a browser.

\(fn &optional ARG)" t nil)

(autoload 'run-skewer "skewer-mode" "\
Attach a browser to Emacs for a skewer JavaScript REPL. Uses
`browse-url' to launch a browser.

\(fn)" t nil)

(autoload 'skewer-run-phantomjs "skewer-mode" "\
Connect an inferior PhantomJS process to Skewer, returning the process.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "skewer-repl" "../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-repl.el"
;;;;;;  "eb30620ae2acbd780a25ee582c80837c")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-repl.el

(autoload 'skewer-repl--response-hook "skewer-repl" "\
Catches all browser messages logging some to the REPL.

\(fn RESPONSE)" nil nil)

(autoload 'skewer-repl "skewer-repl" "\
Start a JavaScript REPL to be evaluated in the visiting browser.

\(fn)" t nil)

(eval-after-load 'skewer-mode '(progn (add-hook 'skewer-response-hook #'skewer-repl--response-hook) (add-hook 'skewer-repl-mode-hook #'skewer-repl-mode-compilation-shell-hook) (define-key skewer-mode-map (kbd "C-c C-z") #'skewer-repl)))

;;;***

;;;### (autoloads nil "skewer-setup" "../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-setup.el"
;;;;;;  "ef2ed7f1a721ebc2029c57de6991ce83")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-setup.el

(autoload 'skewer-setup "skewer-setup" "\
Fully integrate Skewer into js2-mode, css-mode, and html-mode buffers.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/cache-table.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-bower.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-css.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-html.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-mode-autoloads.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-mode-pkg.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-mode.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-repl.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/skewer-mode-20150914.1304/skewer-setup.el")
;;;;;;  (22163 28830 93177 600000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; skewer-mode-autoloads.el ends here

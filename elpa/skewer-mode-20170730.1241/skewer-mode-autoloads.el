;;; skewer-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "skewer-bower" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-bower.el"
;;;;;;  "1941ba2dcd512d4dee99652ae4999f3b")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-bower.el

(autoload 'skewer-bower-refresh "skewer-bower" "\
Update the package listing and packages synchronously.

\(fn)" t nil)

(autoload 'skewer-bower-load "skewer-bower" "\
Dynamically load a library from bower into the current page.

\(fn PACKAGE &optional VERSION)" t nil)

;;;***

;;;### (autoloads nil "skewer-css" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-css.el"
;;;;;;  "626f6351f4cf457b5705dcf019a5de27")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-css.el

(autoload 'skewer-css-mode "skewer-css" "\
Minor mode for interactively loading new CSS rules.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "skewer-html" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-html.el"
;;;;;;  "26c8bb84e7d08aec18518816ce798172")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-html.el

(autoload 'skewer-html-mode "skewer-html" "\
Minor mode for interactively loading new HTML.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "skewer-mode" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-mode.el"
;;;;;;  "0261c9c35e5b3d71c9e8e648f6b420c7")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-mode.el

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

;;;### (autoloads nil "skewer-repl" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-repl.el"
;;;;;;  "bf5a8da48fa29eee60bf757f0fc0a072")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-repl.el

(autoload 'skewer-repl--response-hook "skewer-repl" "\
Catches all browser messages logging some to the REPL.

\(fn RESPONSE)" nil nil)

(autoload 'skewer-repl "skewer-repl" "\
Start a JavaScript REPL to be evaluated in the visiting browser.

\(fn)" t nil)

(eval-after-load 'skewer-mode '(progn (add-hook 'skewer-response-hook #'skewer-repl--response-hook) (add-hook 'skewer-repl-mode-hook #'skewer-repl-mode-compilation-shell-hook) (define-key skewer-mode-map (kbd "C-c C-z") #'skewer-repl)))

;;;***

;;;### (autoloads nil "skewer-setup" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-setup.el"
;;;;;;  "ef2ed7f1a721ebc2029c57de6991ce83")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-setup.el

(autoload 'skewer-setup "skewer-setup" "\
Fully integrate Skewer into js2-mode, css-mode, and html-mode buffers.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/cache-table.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-bower.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-css.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-html.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-mode-autoloads.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-mode-pkg.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-mode.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-repl.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/skewer-mode-20170730.1241/skewer-setup.el")
;;;;;;  (23018 25257 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; skewer-mode-autoloads.el ends here

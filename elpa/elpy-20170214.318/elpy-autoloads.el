;;; elpy-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "elpy" "../../../../../../emacs/.emacs.d/elpa/elpy-20170214.318/elpy.el"
;;;;;;  "4ae6544db1bf7d23197effc92e7854c4")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/elpy-20170214.318/elpy.el

(autoload 'elpy-enable "elpy" "\
Enable Elpy in all future Python buffers.

\(fn &optional IGNORED)" t nil)

(autoload 'elpy-mode "elpy" "\
Minor mode in Python buffers for the Emacs Lisp Python Environment.

This mode fully supports virtualenvs. Once you switch a
virtualenv using \\[pyvenv-workon], you can use
\\[elpy-rpc-restart] to make the elpy Python process use your
virtualenv.

\\{elpy-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'elpy-config "elpy" "\
Configure Elpy.

This function will pop up a configuration buffer, which is mostly
a customize buffer, but has some more options.

\(fn)" t nil)

(autoload 'elpy-version "elpy" "\
Display the version of Elpy.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../emacs/.emacs.d/elpa/elpy-20170214.318/elpy-autoloads.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/elpy-20170214.318/elpy-django.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/elpy-20170214.318/elpy-pkg.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/elpy-20170214.318/elpy-refactor.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/elpy-20170214.318/elpy.el")
;;;;;;  (22693 7258 520991 500000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; elpy-autoloads.el ends here

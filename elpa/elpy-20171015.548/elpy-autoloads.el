;;; elpy-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "elpy" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/elpy-20171015.548/elpy.el"
;;;;;;  "d8acaa9de641682e192ed8526f36c375")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/elpy-20171015.548/elpy.el

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

;;;### (autoloads nil nil ("c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/elpy-20171015.548/elpy-autoloads.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/elpy-20171015.548/elpy-django.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/elpy-20171015.548/elpy-pkg.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/elpy-20171015.548/elpy-profile.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/elpy-20171015.548/elpy-refactor.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/elpy-20171015.548/elpy.el")
;;;;;;  (23018 25455 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; elpy-autoloads.el ends here

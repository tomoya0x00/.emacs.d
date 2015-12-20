;;; arduino-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (arduino-mode) "arduino-mode" "../../../../../../emacs/.emacs.d/elpa/arduino-mode-20151017.2335/arduino-mode.el"
;;;;;;  "c7001a89e8e58b89f80fa74e093ff07d")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/arduino-mode-20151017.2335/arduino-mode.el

(add-to-list 'auto-mode-alist '("\\.pde\\'" . arduino-mode))

(add-to-list 'auto-mode-alist '("\\.ino\\'" . arduino-mode))

(autoload 'arduino-mode "arduino-mode" "\
Major mode for editing Arduino code.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `arduino-mode-hook'.

Key bindings:
\\{arduino-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../emacs/.emacs.d/elpa/arduino-mode-20151017.2335/arduino-mode-pkg.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/arduino-mode-20151017.2335/arduino-mode.el")
;;;;;;  (22072 51506 3000 0))

;;;***

(provide 'arduino-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; arduino-mode-autoloads.el ends here

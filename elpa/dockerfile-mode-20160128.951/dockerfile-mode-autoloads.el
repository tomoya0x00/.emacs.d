;;; dockerfile-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "dockerfile-mode" "../../../../../../emacs/.emacs.d/elpa/dockerfile-mode-20160128.951/dockerfile-mode.el"
;;;;;;  "4075b2c9ce57f2e426ef92219dd0b343")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/dockerfile-mode-20160128.951/dockerfile-mode.el

(autoload 'dockerfile-build-buffer "dockerfile-mode" "\
Build an image based upon the buffer

\(fn IMAGE-NAME)" t nil)

(autoload 'dockerfile-build-no-cache-buffer "dockerfile-mode" "\
Build an image based upon the buffer without cache

\(fn IMAGE-NAME)" t nil)

(autoload 'dockerfile-mode "dockerfile-mode" "\
A major mode to edit Dockerfiles.
\\{dockerfile-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("Dockerfile.*\\'" . dockerfile-mode))

;;;***

;;;### (autoloads nil nil ("../../../../../../emacs/.emacs.d/elpa/dockerfile-mode-20160128.951/dockerfile-mode-autoloads.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/dockerfile-mode-20160128.951/dockerfile-mode.el")
;;;;;;  (22569 16471 362411 300000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; dockerfile-mode-autoloads.el ends here

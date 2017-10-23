;;; ssh-agency-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "ssh-agency" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/ssh-agency-20170807.1152/ssh-agency.el"
;;;;;;  "044c9d1cab830fead3fbab12fb2e53bc")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/ssh-agency-20170807.1152/ssh-agency.el

(autoload 'ssh-agency-ensure "ssh-agency" "\
Start ssh-agent and add keys, as needed.

Intended to be added to `magit-credential-hook'.

\(fn)" nil nil)

(add-hook 'magit-credential-hook 'ssh-agency-ensure)

;;;***

;;;### (autoloads nil nil ("c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/ssh-agency-20170807.1152/ssh-agency-autoloads.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/ssh-agency-20170807.1152/ssh-agency.el")
;;;;;;  (23018 25254 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ssh-agency-autoloads.el ends here

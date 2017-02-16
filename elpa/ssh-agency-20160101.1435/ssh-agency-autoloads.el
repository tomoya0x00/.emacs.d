;;; ssh-agency-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "ssh-agency" "../../../../../../emacs/.emacs.d/elpa/ssh-agency-20160101.1435/ssh-agency.el"
;;;;;;  "b2255413537a1368260af4bccfc3a565")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/ssh-agency-20160101.1435/ssh-agency.el

(autoload 'ssh-agency-ensure "ssh-agency" "\
Start ssh-agent and add keys, as needed.

Intended to be added to `magit-credential-hook'.

\(fn)" nil nil)

(add-hook 'magit-credential-hook 'ssh-agency-ensure)

;;;***

;;;### (autoloads nil nil ("../../../../../../emacs/.emacs.d/elpa/ssh-agency-20160101.1435/ssh-agency-autoloads.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/ssh-agency-20160101.1435/ssh-agency.el")
;;;;;;  (22254 45244 618109 500000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ssh-agency-autoloads.el ends here

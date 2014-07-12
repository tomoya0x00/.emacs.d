;;; git-commit-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (git-commit-mode) "git-commit-mode" "c:/Users/Tomoya
;;;;;;  Miwa/AppData/Roaming/.emacs.d/elpa/git-commit-mode-20140605.520/git-commit-mode.el"
;;;;;;  "e5fed1ddf72e8643f82d414665562be8")
;;; Generated autoloads from c:/Users/Tomoya Miwa/AppData/Roaming/.emacs.d/elpa/git-commit-mode-20140605.520/git-commit-mode.el

(autoload 'git-commit-mode "git-commit-mode" "\
Major mode for editing git commit messages.

This mode helps with editing git commit messages both by
providing commands to do common tasks, and by highlighting the
basic structure of and errors in git commit messages.

\(fn)" t nil)

(dolist (pattern '("/COMMIT_EDITMSG\\'" "/NOTES_EDITMSG\\'" "/MERGE_MSG\\'" "/TAG_EDITMSG\\'" "/PULLREQ_EDITMSG\\'")) (add-to-list 'auto-mode-alist (cons pattern 'git-commit-mode)))

;;;***

;;;### (autoloads nil nil ("c:/Users/Tomoya Miwa/AppData/Roaming/.emacs.d/elpa/git-commit-mode-20140605.520/git-commit-mode-pkg.el"
;;;;;;  "c:/Users/Tomoya Miwa/AppData/Roaming/.emacs.d/elpa/git-commit-mode-20140605.520/git-commit-mode.el")
;;;;;;  (21433 4685 184000 0))

;;;***

(provide 'git-commit-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; git-commit-mode-autoloads.el ends here

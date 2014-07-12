;;; git-rebase-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (git-rebase-mode) "git-rebase-mode" "c:/Users/Tomoya
;;;;;;  Miwa/AppData/Roaming/.emacs.d/elpa/git-rebase-mode-20140605.520/git-rebase-mode.el"
;;;;;;  "4be64a6cc7073eba65c7ff6caa66c1cd")
;;; Generated autoloads from c:/Users/Tomoya Miwa/AppData/Roaming/.emacs.d/elpa/git-rebase-mode-20140605.520/git-rebase-mode.el

(autoload 'git-rebase-mode "git-rebase-mode" "\
Major mode for editing of a Git rebase file.

Rebase files are generated when you run 'git rebase -i' or run
`magit-interactive-rebase'.  They describe how Git should perform
the rebase.  See the documentation for git-rebase (e.g., by
running 'man git-rebase' at the command line) for details.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("/git-rebase-todo\\'" . git-rebase-mode))

;;;***

;;;### (autoloads nil nil ("c:/Users/Tomoya Miwa/AppData/Roaming/.emacs.d/elpa/git-rebase-mode-20140605.520/git-rebase-mode-pkg.el"
;;;;;;  "c:/Users/Tomoya Miwa/AppData/Roaming/.emacs.d/elpa/git-rebase-mode-20140605.520/git-rebase-mode.el")
;;;;;;  (21433 4684 648000 0))

;;;***

(provide 'git-rebase-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; git-rebase-mode-autoloads.el ends here

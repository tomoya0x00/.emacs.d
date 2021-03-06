;;; swift-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "swift-mode" "../../../../../../emacs/.emacs.d/elpa/swift-mode-20170224.1825/swift-mode.el"
;;;;;;  "e3c60ee9bfe6cf82696020ca67ab53f7")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/swift-mode-20170224.1825/swift-mode.el

(let ((loads (get 'swift 'custom-loads))) (if (member '"swift-mode" loads) nil (put 'swift 'custom-loads (cons '"swift-mode" loads))))

(autoload 'swift-mode "swift-mode" "\
Major mode for editing Swift code.

\\{swift-mode-map}

\(fn)" t nil)
 (add-to-list 'auto-mode-alist '("\\.swift\\'" . swift-mode))

;;;***

;;;### (autoloads nil "swift-mode-indent" "../../../../../../emacs/.emacs.d/elpa/swift-mode-20170224.1825/swift-mode-indent.el"
;;;;;;  "8307c308e06bd50ce6b498f0de316094")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/swift-mode-20170224.1825/swift-mode-indent.el

(defvar swift-mode:basic-offset 4 "\
Amount of indentation for block contents.")

(custom-autoload 'swift-mode:basic-offset "swift-mode-indent" t)

(defvar swift-mode:parenthesized-expression-offset 2 "\
Amount of indentation inside parentheses and square brackets.")

(custom-autoload 'swift-mode:parenthesized-expression-offset "swift-mode-indent" t)

(defvar swift-mode:multiline-statement-offset 2 "\
Amount of indentation for continuations of expressions.")

(custom-autoload 'swift-mode:multiline-statement-offset "swift-mode-indent" t)

(defvar swift-mode:switch-case-offset 0 "\
Amount of indentation for case labels in switch statements.")

(custom-autoload 'swift-mode:switch-case-offset "swift-mode-indent" t)

(defvar swift-mode:insert-space-after-asterisk-in-comment t "\
Automatically insert a space after asterisk in comment if non-nil.")

(custom-autoload 'swift-mode:insert-space-after-asterisk-in-comment "swift-mode-indent" t)

(defvar swift-mode:auto-close-multiline-comment t "\
If non-nil, `indent-new-comment-line' automatically close multiline comment.")

(custom-autoload 'swift-mode:auto-close-multiline-comment "swift-mode-indent" t)

(defvar swift-mode:fix-comment-close t "\
Fix \"* /\" in incomplete multiline comment to \"*/\" if non-nil.")

(custom-autoload 'swift-mode:fix-comment-close "swift-mode-indent" t)

(defvar swift-mode:highlight-anchor nil "\
Highlight anchor point for indentation if non-nil.

Intended for debugging.")

(custom-autoload 'swift-mode:highlight-anchor "swift-mode-indent" t)

;;;***

;;;### (autoloads nil "swift-mode-repl" "../../../../../../emacs/.emacs.d/elpa/swift-mode-20170224.1825/swift-mode-repl.el"
;;;;;;  "5ca0ec53400d3dd7c5d49cb37a2fb982")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/swift-mode-20170224.1825/swift-mode-repl.el

(autoload 'swift-mode:run-repl "swift-mode-repl" "\
Run a Swift REPL process.
It input and output via buffer `*CMD*' where CMD is replaced with the CMD given.
If there is a process already running in `*CMD*', switch to that buffer.
With argument CMD allows you to edit the command line (default is value
of `swift-mode:repl-executable').  This function updates the buffer local
variable `swift-mode:repl-executable' with the given CMD, so it will be used
as the default value for the next invocatoin in the current buffer.
With DONT-SWITCH cursor will stay in current buffer.
Runs the hook `swift-repl-mode-hook' (after the `comint-mode-hook' is run).
\(Type \\[describe-mode] in the process buffer for a list of commands.)

\(fn CMD &optional DONT-SWITCH)" t nil)

(defalias 'run-swift 'swift-mode:run-repl)

(autoload 'swift-mode:send-region "swift-mode-repl" "\
Send the current region to the inferior swift process.
START and END define region within current buffer

\(fn START END)" t nil)

(autoload 'swift-mode:send-buffer "swift-mode-repl" "\
Send the buffer to the Swift REPL process.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../emacs/.emacs.d/elpa/swift-mode-20170224.1825/swift-mode-autoloads.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/swift-mode-20170224.1825/swift-mode-beginning-of-defun.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/swift-mode-20170224.1825/swift-mode-font-lock.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/swift-mode-20170224.1825/swift-mode-indent.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/swift-mode-20170224.1825/swift-mode-lexer.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/swift-mode-20170224.1825/swift-mode-pkg.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/swift-mode-20170224.1825/swift-mode-repl.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/swift-mode-20170224.1825/swift-mode.el")
;;;;;;  (22719 40249 22183 400000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; swift-mode-autoloads.el ends here

;;; helm-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "helm-adaptive" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-adaptive.el"
;;;;;;  "34ae97b9c688e0ec3d1dcbc3e367e772")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-adaptive.el

(defvar helm-adaptive-mode nil "\
Non-nil if Helm-Adaptive mode is enabled.
See the `helm-adaptive-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-adaptive-mode'.")

(custom-autoload 'helm-adaptive-mode "helm-adaptive" nil)

(autoload 'helm-adaptive-mode "helm-adaptive" "\
Toggle adaptive sorting in all sources.

\(fn &optional ARG)" t nil)

(autoload 'helm-reset-adaptive-history "helm-adaptive" "\
Delete all `helm-adaptive-history' and his file.
Useful when you have a old or corrupted `helm-adaptive-history-file'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-apt" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-apt.el"
;;;;;;  "4c8bd0da7a5b9f6c57adeca618afbb1f")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-apt.el

(autoload 'helm-apt "helm-apt" "\
Preconfigured `helm' : frontend of APT package manager.
With a prefix arg reload cache.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "helm-bookmark" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-bookmark.el"
;;;;;;  "0f21f740d3552f44c0667bafa913c0a9")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-bookmark.el

(autoload 'helm-bookmarks "helm-bookmark" "\
Preconfigured `helm' for bookmarks.

\(fn)" t nil)

(autoload 'helm-filtered-bookmarks "helm-bookmark" "\
Preconfigured helm for bookmarks (filtered by category).
Optional source `helm-source-bookmark-addressbook' is loaded
only if external addressbook-bookmark package is installed.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-buffers" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-buffers.el"
;;;;;;  "facde6fb79beaa1bc88601636910f10f")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-buffers.el

(autoload 'helm-buffers-list "helm-buffers" "\
Preconfigured `helm' to list buffers.

\(fn)" t nil)

(autoload 'helm-mini "helm-buffers" "\
Preconfigured `helm' lightweight version (buffer -> recentf).

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-color" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-color.el"
;;;;;;  "4eacb1e074d9f6648eb6c878c7fe736d")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-color.el

(autoload 'helm-colors "helm-color" "\
Preconfigured `helm' for color.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-command" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-command.el"
;;;;;;  "edb59c47cccc7da48406d7e43b7f5de1")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-command.el

(autoload 'helm-M-x "helm-command" "\
Preconfigured `helm' for Emacs commands.
It is `helm' replacement of regular `M-x' `execute-extended-command'.

Unlike regular `M-x' emacs vanilla `execute-extended-command' command,
the prefix args if needed, can be passed AFTER starting `helm-M-x'.
When a prefix arg is passed BEFORE starting `helm-M-x', the first `C-u'
while in `helm-M-x' session will disable it.

You can get help on each command by persistent action.

\(fn ARG &optional COMMAND-NAME)" t nil)

;;;***

;;;### (autoloads nil "helm-config" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-config.el"
;;;;;;  "d7792d6aa43b8039b5d1f8e1f3323e9d")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-config.el

(autoload 'helm-configuration "helm-config" "\
Customize `helm'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-dabbrev" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-dabbrev.el"
;;;;;;  "09653126707524c539273c8ac036584e")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-dabbrev.el

(autoload 'helm-dabbrev "helm-dabbrev" "\
Preconfigured helm for dynamic abbreviations.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-elisp" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-elisp.el"
;;;;;;  "ab38834b8ca504d442e6eac04e2f58ec")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-elisp.el

(autoload 'helm-lisp-completion-at-point "helm-elisp" "\
Preconfigured helm for lisp symbol completion at point.

\(fn)" t nil)

(autoload 'helm-complete-file-name-at-point "helm-elisp" "\
Preconfigured helm to complete file name at point.

\(fn &optional FORCE)" t nil)

(autoload 'helm-lisp-indent "helm-elisp" "\


\(fn)" t nil)

(autoload 'helm-lisp-completion-or-file-name-at-point "helm-elisp" "\
Preconfigured helm to complete lisp symbol or filename at point.
Filename completion happen if string start after or between a double quote.

\(fn)" t nil)

(autoload 'helm-apropos "helm-elisp" "\
Preconfigured helm to describe commands, functions, variables and faces.
In non interactives calls DEFAULT argument should be provided as a string,
i.e the `symbol-name' of any existing symbol.

\(fn DEFAULT)" t nil)

(autoload 'helm-manage-advice "helm-elisp" "\
Preconfigured `helm' to disable/enable function advices.

\(fn)" t nil)

(autoload 'helm-locate-library "helm-elisp" "\
Preconfigured helm to locate elisp libraries.

\(fn)" t nil)

(autoload 'helm-timers "helm-elisp" "\
Preconfigured `helm' for timers.

\(fn)" t nil)

(autoload 'helm-complex-command-history "helm-elisp" "\
Preconfigured helm for complex command history.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-elisp-package" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-elisp-package.el"
;;;;;;  "6238c636ad736efc9b50e8950d53149d")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-elisp-package.el

(autoload 'helm-list-elisp-packages "helm-elisp-package" "\
Preconfigured helm for listing and handling emacs packages.

\(fn ARG)" t nil)

(autoload 'helm-list-elisp-packages-no-fetch "helm-elisp-package" "\
Preconfigured helm for emacs packages.

Same as `helm-list-elisp-packages' but don't fetch packages on remote.
Called with a prefix ARG always fetch packages on remote.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "helm-eshell" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-eshell.el"
;;;;;;  "4f8d9279e97fe56b5b754e7370164ae2")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-eshell.el

(autoload 'helm-esh-pcomplete "helm-eshell" "\
Preconfigured helm to provide helm completion in eshell.

\(fn)" t nil)

(autoload 'helm-eshell-history "helm-eshell" "\
Preconfigured helm for eshell history.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-eval" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-eval.el"
;;;;;;  "7fc4be9f73d273210b713adb0cae3e0c")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-eval.el

(autoload 'helm-eval-expression "helm-eval" "\
Preconfigured helm for `helm-source-evaluation-result'.

\(fn ARG)" t nil)

(autoload 'helm-eval-expression-with-eldoc "helm-eval" "\
Preconfigured helm for `helm-source-evaluation-result' with `eldoc' support. 

\(fn)" t nil)

(autoload 'helm-calcul-expression "helm-eval" "\
Preconfigured helm for `helm-source-calculation-result'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-external" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-external.el"
;;;;;;  "0b48abc217e606f8a80865263235e362")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-external.el

(autoload 'helm-run-external-command "helm-external" "\
Preconfigured `helm' to run External PROGRAM asyncronously from Emacs.
If program is already running exit with error.
You can set your own list of commands with
`helm-external-commands-list'.

\(fn PROGRAM)" t nil)

;;;***

;;;### (autoloads nil "helm-files" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-files.el"
;;;;;;  "f4e57e881bd7e7406b9f7439e410df79")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-files.el

(autoload 'helm-projects-history "helm-files" "\


\(fn)" t nil)

(autoload 'helm-browse-project "helm-files" "\
Preconfigured helm to browse projects.
Browse files and see status of project with its vcs.
Only HG and GIT are supported for now.
Fall back to `helm-browse-project-find-files'
if current directory is not under control of one of those vcs.
With a prefix ARG browse files recursively, with two prefix ARG
rebuild the cache.
If the current directory is found in the cache, start
`helm-browse-project-find-files' even with no prefix ARG.
NOTE: The prefix ARG have no effect on the VCS controlled directories.

Needed dependencies for VCS:
<https://github.com/emacs-helm/helm-ls-git>
and
<https://github.com/emacs-helm/helm-ls-hg>
and
<http://melpa.org/#/helm-ls-svn>.

\(fn ARG)" t nil)

(autoload 'helm-find-files "helm-files" "\
Preconfigured `helm' for helm implementation of `find-file'.
Called with a prefix arg show history if some.
Don't call it from programs, use `helm-find-files-1' instead.
This is the starting point for nearly all actions you can do on files.

\(fn ARG)" t nil)

(autoload 'helm-delete-tramp-connection "helm-files" "\
Allow deleting tramp connection or marked tramp connections at once.

This replace `tramp-cleanup-connection' which is partially broken in
emacs < to 25.1.50.1 (See Emacs Bug#24432).

It allows additionally to delete more than one connection at once.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-find" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-find.el"
;;;;;;  "f5afe320337b44accd03765b6ec11d8c")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-find.el

(autoload 'helm-find "helm-find" "\
Preconfigured `helm' for the find shell command.

Recursively find files whose names are matched by all specified
globbing PATTERNs under the current directory using the external
program specified in `find-program' (usually \"find\").  Every
input PATTERN is silently wrapped into two stars: *PATTERN*.

With prefix argument, prompt for a directory to search.

When user option `helm-findutils-search-full-path' is non-nil,
match against complete paths, otherwise, against file names
without directory part.

The (possibly empty) list of globbing PATTERNs can be followed by
the separator \"*\" plus any number of additional arguments that
are passed to \"find\" literally.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "helm-font" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-font.el"
;;;;;;  "27145b44fa36491220dc74e947226d18")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-font.el

(autoload 'helm-select-xfont "helm-font" "\
Preconfigured `helm' to select Xfont.

\(fn)" t nil)

(autoload 'helm-ucs "helm-font" "\
Preconfigured helm for `ucs-names'.

Called with a prefix arg force reloading cache.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "helm-for-files" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-for-files.el"
;;;;;;  "a1e6a81bab6fd4be6986c34bf2407fcb")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-for-files.el

(autoload 'helm-for-files "helm-for-files" "\
Preconfigured `helm' for opening files.
Run all sources defined in `helm-for-files-preferred-list'.

\(fn)" t nil)

(autoload 'helm-multi-files "helm-for-files" "\
Preconfigured helm like `helm-for-files' but running locate only on demand.

Allow toggling back and forth from locate to others sources with
`helm-multi-files-toggle-locate-binding' key.
This avoid launching needlessly locate when what you search is already
found.

\(fn)" t nil)

(autoload 'helm-recentf "helm-for-files" "\
Preconfigured `helm' for `recentf'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-grep" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-grep.el"
;;;;;;  "700f20641a7ed3899b72404fa2899963")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-grep.el

(autoload 'helm-goto-precedent-file "helm-grep" "\
Go to precedent file in helm grep/etags buffers.

\(fn)" t nil)

(autoload 'helm-goto-next-file "helm-grep" "\
Go to precedent file in helm grep/etags buffers.

\(fn)" t nil)

(autoload 'helm-do-grep-ag "helm-grep" "\
Preconfigured helm for grepping with AG in `default-directory'.
With prefix-arg prompt for type if available with your AG version.

\(fn ARG)" t nil)

(autoload 'helm-grep-do-git-grep "helm-grep" "\
Preconfigured helm for git-grepping `default-directory'.
With a prefix arg ARG git-grep the whole repository.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "helm-help" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-help.el"
;;;;;;  "7b20659fc56a61c8978afbad37d9dc40")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-help.el

(autoload 'helm-documentation "helm-help" "\
Preconfigured Helm for Helm documentation.
With a prefix arg refresh the documentation.

Find here the documentation of all documented sources.

\(fn)" t nil)

(defvar helm-comp-read-mode-line "\\<helm-comp-read-map>C/\\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-help]:Help \\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-read-file-name-mode-line-string "\\<helm-read-file-map>\\[helm-help]:Help C/\\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend" "\
String displayed in mode-line in `helm-source-find-files'.")

(defvar helm-top-mode-line "\\<helm-top-map>\\[helm-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

;;;***

;;;### (autoloads nil "helm-id-utils" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-id-utils.el"
;;;;;;  "8e55e695e767ae632ac2fd5b95643fc1")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-id-utils.el

(autoload 'helm-gid "helm-id-utils" "\
Preconfigured helm for `gid' command line of `ID-Utils'.
Need A database created with the command `mkid'
above `default-directory'.
Need id-utils as dependency which provide `mkid', `gid' etc...
See <https://www.gnu.org/software/idutils/>.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-imenu" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-imenu.el"
;;;;;;  "accaf80b4ec82c9733dc97b03129cb87")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-imenu.el

(autoload 'helm-imenu "helm-imenu" "\
Preconfigured `helm' for `imenu'.

\(fn)" t nil)

(autoload 'helm-imenu-in-all-buffers "helm-imenu" "\
Preconfigured helm for fetching imenu entries in all buffers with similar mode as current.
A mode is similar as current if it is the same, it is derived i.e `derived-mode-p'
or it have an association in `helm-imenu-all-buffer-assoc'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-info" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-info.el"
;;;;;;  "67f254f46e4294f2076ca3b891153a9b")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-info.el

(autoload 'helm-info "helm-info" "\
Preconfigured `helm' for searching Info files' indices.

With a prefix argument \\[universal-argument], set REFRESH to non-nil.

Optional parameter REFRESH, when non-nil, reevaluates
`helm-default-info-index-list'.  If the variable has been
customized, set it to its saved value.  If not, set it to its
standard value.  See `custom-reevaluate-setting' for more.

REFRESH is useful when new Info files are installed.  If
`helm-default-info-index-list' has not been customized, the new
Info files are made available.

\(fn &optional REFRESH)" t nil)

(autoload 'helm-info-at-point "helm-info" "\
Preconfigured `helm' for searching info at point.
With a prefix-arg insert symbol at point.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-locate" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-locate.el"
;;;;;;  "f9a2719d0867cfe53174f7b9d4b95043")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-locate.el

(autoload 'helm-projects-find-files "helm-locate" "\
Find files with locate in `helm-locate-project-list'.
With a prefix arg refresh the database in each project.

\(fn UPDATE)" t nil)

(autoload 'helm-locate "helm-locate" "\
Preconfigured `helm' for Locate.
Note: you can add locate options after entering pattern.
See 'man locate' for valid options and also `helm-locate-command'.

You can specify a local database with prefix argument ARG.
With two prefix arg, refresh the current local db or create it
if it doesn't exists.

To create a user specific db, use
\"updatedb -l 0 -o db_path -U directory\".
Where db_path is a filename matched by
`helm-locate-db-file-regexp'.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "helm-man" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-man.el"
;;;;;;  "fc93357ab83d603fd23b945c49773796")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-man.el

(autoload 'helm-man-woman "helm-man" "\
Preconfigured `helm' for Man and Woman pages.
With a prefix arg reinitialize the cache.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "helm-misc" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-misc.el"
;;;;;;  "9d8baeefee53e039644fe7a4953e6af9")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-misc.el

(autoload 'helm-world-time "helm-misc" "\
Preconfigured `helm' to show world time.
Default action change TZ environment variable locally to emacs.

\(fn)" t nil)

(autoload 'helm-insert-latex-math "helm-misc" "\
Preconfigured helm for latex math symbols completion.

\(fn)" t nil)

(autoload 'helm-ratpoison-commands "helm-misc" "\
Preconfigured `helm' to execute ratpoison commands.

\(fn)" t nil)

(autoload 'helm-stumpwm-commands "helm-misc" "\
Preconfigured helm for stumpwm commands.

\(fn)" t nil)

(autoload 'helm-minibuffer-history "helm-misc" "\
Preconfigured `helm' for `minibuffer-history'.

\(fn)" t nil)

(autoload 'helm-comint-input-ring "helm-misc" "\
Preconfigured `helm' that provide completion of `comint' history.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-mode" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-mode.el"
;;;;;;  "1e1179c3776f0323dedd8733ca4269ea")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-mode.el

(autoload 'helm-comp-read "helm-mode" "\
Read a string in the minibuffer, with helm completion.

It is helm `completing-read' equivalent.

- PROMPT is the prompt name to use.

- COLLECTION can be a list, vector, obarray or hash-table.
  It can be also a function that receives three arguments:
  the values string, predicate and t. See `all-completions' for more details.

Keys description:

- TEST: A predicate called with one arg i.e candidate.

- INITIAL-INPUT: Same as input arg in `helm'.

- PRESELECT: See preselect arg of `helm'.

- DEFAULT: This option is used only for compatibility with regular
  Emacs `completing-read' (Same as DEFAULT arg of `completing-read').

- BUFFER: Name of helm-buffer.

- MUST-MATCH: Candidate selected must be one of COLLECTION.

- FUZZY: Enable fuzzy matching.

- REVERSE-HISTORY: When non--nil display history source after current
  source completion.

- REQUIRES-PATTERN: Same as helm attribute, default is 0.

- HISTORY: A list containing specific history, default is nil.
  When it is non--nil, all elements of HISTORY are displayed in
  a special source before COLLECTION.

- INPUT-HISTORY: A symbol. the minibuffer input history will be
  stored there, if nil or not provided, `minibuffer-history'
  will be used instead.

- CASE-FOLD: Same as `helm-case-fold-search'.

- DEL-INPUT: Boolean, when non--nil (default) remove the partial
  minibuffer input from HISTORY is present.

- PERSISTENT-ACTION: A function called with one arg i.e candidate.

- PERSISTENT-HELP: A string to document PERSISTENT-ACTION.

- MODE-LINE: A string or list to display in mode line.
  Default is `helm-comp-read-mode-line'.

- KEYMAP: A keymap to use in this `helm-comp-read'.
  (the keymap will be shared with history source)

- NAME: The name related to this local source.

- HEADER-NAME: A function to alter NAME, see `helm'.

- EXEC-WHEN-ONLY-ONE: Bound `helm-execute-action-at-once-if-one'
  to non--nil. (possibles values are t or nil).

- VOLATILE: Use volatile attribute.

- SORT: A predicate to give to `sort' e.g `string-lessp'
  Use this only on small data as it is ineficient.
  If you want to sort faster add a sort function to
  FC-TRANSFORMER.
  Note that FUZZY when enabled is already providing a sort function.

- FC-TRANSFORMER: A `filtered-candidate-transformer' function
  or a list of functions.

- HIST-FC-TRANSFORMER: A `filtered-candidate-transformer'
  function for the history source.

- MARKED-CANDIDATES: If non--nil return candidate or marked candidates as a list.

- NOMARK: When non--nil don't allow marking candidates.

- ALISTP: (default is non--nil) See `helm-comp-read-get-candidates'.

- CANDIDATES-IN-BUFFER: when non--nil use a source build with
  `helm-source-in-buffer' which is much faster.
  Argument VOLATILE have no effect when CANDIDATES-IN-BUFFER is non--nil.

- MATCH-PART: Allow matching only one part of candidate.
  See match-part documentation in `helm-source'.

- ALLOW-NEST: Allow nesting this `helm-comp-read' in a helm session.
  See `helm'.

- MULTILINE: See multiline in `helm-source'.

Any prefix args passed during `helm-comp-read' invocation will be recorded
in `helm-current-prefix-arg', otherwise if prefix args were given before
`helm-comp-read' invocation, the value of `current-prefix-arg' will be used.
That's mean you can pass prefix args before or after calling a command
that use `helm-comp-read' See `helm-M-x' for example.

\(fn PROMPT COLLECTION &key TEST INITIAL-INPUT DEFAULT PRESELECT (BUFFER \"*Helm Completions*\") MUST-MATCH FUZZY REVERSE-HISTORY (REQUIRES-PATTERN 0) HISTORY INPUT-HISTORY (CASE-FOLD helm-comp-read-case-fold-search) (DEL-INPUT t) (PERSISTENT-ACTION nil) (PERSISTENT-HELP \"DoNothing\") (MODE-LINE helm-comp-read-mode-line) HELP-MESSAGE (KEYMAP helm-comp-read-map) (NAME \"Helm Completions\") HEADER-NAME CANDIDATES-IN-BUFFER MATCH-PART EXEC-WHEN-ONLY-ONE QUIT-WHEN-NO-CAND (VOLATILE t) SORT FC-TRANSFORMER HIST-FC-TRANSFORMER MARKED-CANDIDATES NOMARK (ALISTP t) (CANDIDATE-NUMBER-LIMIT helm-candidate-number-limit) MULTILINE ALLOW-NEST)" nil nil)

(autoload 'helm-read-file-name "helm-mode" "\
Read a file name with helm completion.
It is helm `read-file-name' emulation.

Argument PROMPT is the default prompt to use.

Keys description:

- NAME: Source name, default to \"Read File Name\".

- INITIAL-INPUT: Where to start read file name, default to `default-directory'.

- BUFFER: `helm-buffer' name default to \"*Helm Completions*\".

- TEST: A predicate called with one arg 'candidate'.

- CASE-FOLD: Same as `helm-case-fold-search'.

- PRESELECT: helm preselection.

- HISTORY: Display HISTORY in a special source.

- MUST-MATCH: Can be 'confirm, nil, or t.

- FUZZY: Enable fuzzy matching when non-nil (Enabled by default).

- MARKED-CANDIDATES: When non--nil return a list of marked candidates.

- NOMARK: When non--nil don't allow marking candidates.

- ALISTP: Don't use `all-completions' in history (take effect only on history).

- PERSISTENT-ACTION: a persistent action function.

- PERSISTENT-HELP: persistent help message.

- MODE-LINE: A mode line message, default is `helm-read-file-name-mode-line-string'.

\(fn PROMPT &key (NAME \"Read File Name\") (INITIAL-INPUT default-directory) (BUFFER \"*Helm file completions*\") TEST (CASE-FOLD helm-file-name-case-fold-search) PRESELECT HISTORY MUST-MATCH (FUZZY t) DEFAULT MARKED-CANDIDATES (CANDIDATE-NUMBER-LIMIT helm-ff-candidate-number-limit) NOMARK (ALISTP t) (PERSISTENT-ACTION \\='helm-find-files-persistent-action) (PERSISTENT-HELP \"Hit1 Expand Candidate, Hit2 or (C-u) Find file\") (MODE-LINE helm-read-file-name-mode-line-string))" nil nil)

(defvar helm-mode nil "\
Non-nil if Helm mode is enabled.
See the `helm-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-mode'.")

(custom-autoload 'helm-mode "helm-mode" nil)

(autoload 'helm-mode "helm-mode" "\
Toggle generic helm completion.

All functions in Emacs that use `completing-read'
or `read-file-name' and friends will use helm interface
when this mode is turned on.
However you can modify this behavior for functions of your choice
with `helm-completing-read-handlers-alist'.

Called with a positive arg, turn on unconditionally, with a
negative arg turn off.
You can turn it on with `helm-mode'.

Some crap emacs functions may not be supported,
e.g `ffap-alternate-file' and maybe others
You can add such functions to `helm-completing-read-handlers-alist'
with a nil value.

Note: This mode is incompatible with Emacs23.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "helm-net" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-net.el"
;;;;;;  "640a6b61221c26218c2489fe2d85f9e8")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-net.el

(autoload 'helm-browse-url-firefox "helm-net" "\
Same as `browse-url-firefox' but detach from emacs.

So when you quit emacs you can keep your firefox session open
and not be prompted to kill firefox process.

NOTE: Probably not supported on some systems (e.g Windows).

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-opera "helm-net" "\
Browse URL with opera browser and detach from emacs.

So when you quit emacs you can keep your opera session open
and not be prompted to kill opera process.

NOTE: Probably not supported on some systems (e.g Windows).

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-chromium "helm-net" "\
Browse URL with google chrome browser.

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-uzbl "helm-net" "\
Browse URL with uzbl browser.

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-conkeror "helm-net" "\
Browse URL with conkeror browser.

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-surfraw "helm-net" "\
Preconfigured `helm' to search PATTERN with search ENGINE.

\(fn PATTERN ENGINE)" t nil)

(autoload 'helm-google-suggest "helm-net" "\
Preconfigured `helm' for google search with google suggest.

\(fn)" t nil)

(autoload 'helm-wikipedia-suggest "helm-net" "\
Preconfigured `helm' for Wikipedia lookup with Wikipedia suggest.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-org" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-org.el"
;;;;;;  "e70ac1510ce884ff0845998695a99bc9")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-org.el

(autoload 'helm-org-agenda-files-headings "helm-org" "\
Preconfigured helm for org files headings.

\(fn)" t nil)

(autoload 'helm-org-in-buffer-headings "helm-org" "\
Preconfigured helm for org buffer headings.

\(fn)" t nil)

(autoload 'helm-org-parent-headings "helm-org" "\
Preconfigured helm for org headings that are parents of the
current heading.

\(fn)" t nil)

(autoload 'helm-org-capture-templates "helm-org" "\
Preconfigured helm for org templates.

\(fn)" t nil)

(autoload 'helm-org-completing-read-tags "helm-org" "\


\(fn PROMPT COLLECTION PRED REQ INITIAL HIST DEF INHERIT-INPUT-METHOD NAME BUFFER)" nil nil)

;;;***

;;;### (autoloads nil "helm-regexp" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-regexp.el"
;;;;;;  "2eccbf96d67660f5be197721203d52e4")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-regexp.el

(autoload 'helm-moccur-mode "helm-regexp" "\
Major mode to provide actions in helm moccur saved buffer.

Special commands:
\\{helm-moccur-mode-map}

\(fn)" t nil)

(autoload 'helm-regexp "helm-regexp" "\
Preconfigured helm to build regexps.
`query-replace-regexp' can be run from there against found regexp.

\(fn)" t nil)

(autoload 'helm-occur "helm-regexp" "\
Preconfigured helm for Occur.

\(fn)" t nil)

(autoload 'helm-occur-from-isearch "helm-regexp" "\
Invoke `helm-occur' from isearch.

\(fn)" t nil)

(autoload 'helm-multi-occur-from-isearch "helm-regexp" "\
Invoke `helm-multi-occur' from isearch.

With a prefix arg, reverse the behavior of
`helm-moccur-always-search-in-current'.
The prefix arg can be set before calling
`helm-multi-occur-from-isearch' or during the buffer selection.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "helm-ring" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-ring.el"
;;;;;;  "587b1c744dc317a09fdd20cca336cc86")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-ring.el

(autoload 'helm-mark-ring "helm-ring" "\
Preconfigured `helm' for `helm-source-mark-ring'.

\(fn)" t nil)

(autoload 'helm-global-mark-ring "helm-ring" "\
Preconfigured `helm' for `helm-source-global-mark-ring'.

\(fn)" t nil)

(autoload 'helm-all-mark-rings "helm-ring" "\
Preconfigured `helm' for `helm-source-global-mark-ring' and `helm-source-mark-ring'.

\(fn)" t nil)

(autoload 'helm-register "helm-ring" "\
Preconfigured `helm' for Emacs registers.

\(fn)" t nil)

(autoload 'helm-show-kill-ring "helm-ring" "\
Preconfigured `helm' for `kill-ring'.
It is drop-in replacement of `yank-pop'.

First call open the kill-ring browser, next calls move to next line.

\(fn)" t nil)

(autoload 'helm-execute-kmacro "helm-ring" "\
Preconfigured helm for keyboard macros.
Define your macros with `f3' and `f4'.
See (info \"(emacs) Keyboard Macros\") for detailed infos.
This command is useful when used with persistent action.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-semantic" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-semantic.el"
;;;;;;  "fac5e992033a00775a74b6746cd437b0")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-semantic.el

(autoload 'helm-semantic "helm-semantic" "\
Preconfigured `helm' for `semantic'.
If ARG is supplied, pre-select symbol at point instead of current

\(fn ARG)" t nil)

(autoload 'helm-semantic-or-imenu "helm-semantic" "\
Preconfigured helm for `semantic' or `imenu'.
If ARG is supplied, pre-select symbol at point instead of current
semantic tag in scope.

If `semantic-mode' is active in the current buffer, then use
semantic for generating tags, otherwise fall back to `imenu'.
Fill in the symbol at point by default.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "helm-sys" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-sys.el"
;;;;;;  "bd269734ab0b307675567edf0ad1b57c")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-sys.el

(defvar helm-top-poll-mode nil "\
Non-nil if Helm-Top-Poll mode is enabled.
See the `helm-top-poll-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-top-poll-mode'.")

(custom-autoload 'helm-top-poll-mode "helm-sys" nil)

(autoload 'helm-top-poll-mode "helm-sys" "\
Refresh automatically helm top buffer once enabled.

\(fn &optional ARG)" t nil)

(autoload 'helm-top "helm-sys" "\
Preconfigured `helm' for top command.

\(fn)" t nil)

(autoload 'helm-list-emacs-process "helm-sys" "\
Preconfigured `helm' for emacs process.

\(fn)" t nil)

(autoload 'helm-xrandr-set "helm-sys" "\
Preconfigured helm for xrandr.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-tags" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-tags.el"
;;;;;;  "fde95d31acdf84175da38558c78d6046")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-tags.el

(autoload 'helm-etags-select "helm-tags" "\
Preconfigured helm for etags.
If called with a prefix argument REINIT
or if any of the tag files have been modified, reinitialize cache.

This function aggregates three sources of tag files:

  1) An automatically located file in the parent directories,
     by `helm-etags-get-tag-file'.
  2) `tags-file-name', which is commonly set by `find-tag' command.
  3) `tags-table-list' which is commonly set by `visit-tags-table' command.

\(fn REINIT)" t nil)

;;;***

;;;### (autoloads nil "helm-utils" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-utils.el"
;;;;;;  "5212b9d2abaa5674f0c86cba705feb7e")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-utils.el

(defvar helm-popup-tip-mode nil "\
Non-nil if Helm-Popup-Tip mode is enabled.
See the `helm-popup-tip-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-popup-tip-mode'.")

(custom-autoload 'helm-popup-tip-mode "helm-utils" nil)

(autoload 'helm-popup-tip-mode "helm-utils" "\
Show help-echo informations in a popup tip at end of line.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-adaptive.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-apt.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-autoloads.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-bookmark.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-buffers.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-color.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-command.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-config.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-dabbrev.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-easymenu.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-elisp-package.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-elisp.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-eshell.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-eval.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-external.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-files.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-find.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-font.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-for-files.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-grep.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-help.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-id-utils.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-imenu.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-info.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-locate.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-man.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-misc.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-mode.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-net.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-org.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-pkg.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-regexp.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-ring.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-semantic.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-sys.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-tags.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-types.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-utils.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/helm-20171019.2338/helm-x-files.el")
;;;;;;  (23018 25399 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; helm-autoloads.el ends here

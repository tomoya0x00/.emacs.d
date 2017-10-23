;;; apel-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "alist" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/alist.el"
;;;;;;  "8e5644b079ecfef02aa1caf5969e29f8")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/alist.el

(autoload 'put-alist "alist" "\
Set cdr of an element (KEY . ...) in ALIST to VALUE and return ALIST.
If there is no such element, create a new pair (KEY . VALUE) and
return a new alist whose car is the new pair and cdr is ALIST.

\(fn KEY VALUE ALIST)" nil nil)

(autoload 'del-alist "alist" "\
Delete an element whose car equals KEY from ALIST.
Return the modified ALIST.

\(fn KEY ALIST)" nil nil)

(autoload 'set-alist "alist" "\
Set cdr of an element (KEY . ...) in the alist bound to SYMBOL to VALUE.

\(fn SYMBOL KEY VALUE)" nil nil)

(autoload 'remove-alist "alist" "\
Delete an element whose car equals KEY from the alist bound to SYMBOL.

\(fn SYMBOL KEY)" nil nil)

(autoload 'modify-alist "alist" "\
Store elements in the alist MODIFIER in the alist DEFAULT.
Return the modified alist.

\(fn MODIFIER DEFAULT)" nil nil)

(autoload 'set-modified-alist "alist" "\
Store elements in the alist MODIFIER in an alist bound to SYMBOL.
If SYMBOL is not bound, set it to nil at first.

\(fn SYMBOL MODIFIER)" nil nil)

(autoload 'vassoc "alist" "\
Search AVLIST for an element whose first element equals KEY.
AVLIST is a list of vectors.
See also `assoc'.

\(fn KEY AVLIST)" nil nil)

;;;***

;;;### (autoloads nil "path-util" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/path-util.el"
;;;;;;  "1cbf0f1e5b2ae1c2367eeefb2e119657")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/path-util.el

(autoload 'add-path "path-util" "\
Add PATH to `load-path' if it exists under `default-load-path'
directories and it does not exist in `load-path'.

You can use following PATH styles:
	load-path relative: \"PATH/\"
			(it is searched from `default-load-path')
	home directory relative: \"~/PATH/\" \"~USER/PATH/\"
	absolute path: \"/HOO/BAR/BAZ/\"

You can specify following OPTIONS:
	'all-paths	search from `load-path'
			instead of `default-load-path'
	'append		add PATH to the last of `load-path'

\(fn PATH &rest OPTIONS)" nil nil)

(autoload 'add-latest-path "path-util" "\
Add latest path matched by PATTERN to `load-path'
if it exists under `default-load-path' directories
and it does not exist in `load-path'.

If optional argument ALL-PATHS is specified, it is searched from all
of load-path instead of default-load-path.

\(fn PATTERN &optional ALL-PATHS)" nil nil)

(autoload 'get-latest-path "path-util" "\
Return latest directory in default-load-path
which is matched to regexp PATTERN.
If optional argument ALL-PATHS is specified,
it is searched from all of load-path instead of default-load-path.

\(fn PATTERN &optional ALL-PATHS)" nil nil)

(autoload 'file-installed-p "path-util" "\
Return absolute-path of FILE if FILE exists in PATHS.
If PATHS is omitted, `load-path' is used.

\(fn FILE &optional PATHS)" nil nil)

(defvar exec-suffix-list '("") "\
*List of suffixes for executable.")

(autoload 'exec-installed-p "path-util" "\
Return absolute-path of FILE if FILE exists in PATHS.
If PATHS is omitted, `exec-path' is used.
If suffixes is omitted, `exec-suffix-list' is used.

\(fn FILE &optional PATHS SUFFIXES)" nil nil)

(autoload 'module-installed-p "path-util" "\
Return t if module is provided or exists in PATHS.
If PATHS is omitted, `load-path' is used.

\(fn MODULE &optional PATHS)" nil nil)

;;;***

;;;### (autoloads nil "richtext" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/richtext.el"
;;;;;;  "6926131c46cbe98cec09ce6a8bdda6c2")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/richtext.el

(autoload 'richtext-encode "richtext" "\


\(fn FROM TO)" nil nil)

(autoload 'richtext-decode "richtext" "\


\(fn FROM TO)" nil nil)

;;;***

;;;### (autoloads nil nil ("c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/alist.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/apel-autoloads.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/apel-pkg.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/apel-ver.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/broken.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/calist.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/emu.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/filename.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/install.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/inv-23.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/invisible.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/mcharset.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/mcs-20.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/mcs-e20.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/mule-caesar.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/path-util.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/pccl-20.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/pccl.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/pces-20.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/pces-e20.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/pces.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/pcustom.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/poe.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/poem-e20.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/poem-e20_3.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/poem.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/product.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/pym.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/richtext.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/apel-20170122.1458/static.el")
;;;;;;  (23018 25502 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; apel-autoloads.el ends here

;;; simple-httpd-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "simple-httpd" "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/simple-httpd-20171004.938/simple-httpd.el"
;;;;;;  "fb7c8d5ce6a7bcb88e4d059691247252")
;;; Generated autoloads from c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/simple-httpd-20171004.938/simple-httpd.el

(autoload 'httpd-start "simple-httpd" "\
Start the web server process. If the server is already
running, this will restart the server. There is only one server
instance per Emacs instance.

\(fn)" t nil)

(autoload 'httpd-stop "simple-httpd" "\
Stop the web server if it is currently running, otherwise do nothing.

\(fn)" t nil)

(autoload 'httpd-serve-directory "simple-httpd" "\
Start the web server with given `directory' as `httpd-root'.

\(fn DIRECTORY)" t nil)

;;;***

;;;### (autoloads nil nil ("c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/simple-httpd-20171004.938/simple-httpd-autoloads.el"
;;;;;;  "c:/Users/tomoy/AppData/Roaming/.emacs.d/elpa/simple-httpd-20171004.938/simple-httpd.el")
;;;;;;  (23018 25263 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; simple-httpd-autoloads.el ends here

;;; gh-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (gh-api-v3 gh-api) "gh-api" "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-api.el"
;;;;;;  "0656249b3ccf40e859796e4b256b11e1")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-api.el

(require 'eieio)

(eieio-defclass-autoload 'gh-api 'nil "gh-api" "Github API")

(eieio-defclass-autoload 'gh-api-v3 '(gh-api) "gh-api" "Github API v3")

;;;***

;;;### (autoloads (gh-oauth-authenticator gh-password-authenticator
;;;;;;  gh-authenticator) "gh-auth" "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-auth.el"
;;;;;;  "0eb7f6cde7b43e54e5a9fe2fc7312a1d")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-auth.el

(require 'eieio)

(eieio-defclass-autoload 'gh-authenticator 'nil "gh-auth" "Abstract authenticator")

(eieio-defclass-autoload 'gh-password-authenticator '(gh-authenticator) "gh-auth" "Password-based authenticator")

(eieio-defclass-autoload 'gh-oauth-authenticator '(gh-authenticator) "gh-auth" "Oauth-based authenticator")

;;;***

;;;### (autoloads nil "gh-cache" "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-cache.el"
;;;;;;  "cc791dbe5b9f177ac6527432f660ea81")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-cache.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh-common" "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-common.el"
;;;;;;  "943089d63efbcbbf91c4cb7aa188cc2d")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-common.el

(require 'eieio)

;;;***

;;;### (autoloads (gh-gist-gist gh-gist-gist-stub gh-gist-api) "gh-gist"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-gist.el"
;;;;;;  "531d7587305151c8ac8d3590ad840231")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-gist.el

(require 'eieio)

(eieio-defclass-autoload 'gh-gist-api '(gh-api-v3) "gh-gist" "Gist API")

(eieio-defclass-autoload 'gh-gist-gist-stub '(gh-object) "gh-gist" "Class for user-created gist objects")

(eieio-defclass-autoload 'gh-gist-gist '(gh-gist-gist-stub) "gh-gist" "Gist object")

;;;***

;;;### (autoloads nil "gh-issue-comments" "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-issue-comments.el"
;;;;;;  "4788bfa397bdd1c300c6338257ba08b1")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-issue-comments.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh-issues" "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-issues.el"
;;;;;;  "d67c03ac3962b0a7e0c7510dba3070ba")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-issues.el

(require 'eieio)

;;;***

;;;### (autoloads (gh-oauth-api) "gh-oauth" "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-oauth.el"
;;;;;;  "47f36bf023e7635c3301f438bb418cb8")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-oauth.el

(require 'eieio)

(eieio-defclass-autoload 'gh-oauth-api '(gh-api-v3) "gh-oauth" "OAuth API")

;;;***

;;;### (autoloads (gh-orgs-org-stub gh-orgs-api) "gh-orgs" "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-orgs.el"
;;;;;;  "abf4ef8669db9ef2d81b265b5baafaf3")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-orgs.el

(require 'eieio)

(eieio-defclass-autoload 'gh-orgs-api '(gh-api-v3) "gh-orgs" "Orgs API")

(eieio-defclass-autoload 'gh-orgs-org-stub '(gh-object) "gh-orgs" nil)

;;;***

;;;### (autoloads (gh-pulls-request gh-pulls-api) "gh-pulls" "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-pulls.el"
;;;;;;  "55ca45cbc946d055c26ae076d2d19f76")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-pulls.el

(require 'eieio)

(eieio-defclass-autoload 'gh-pulls-api '(gh-api-v3) "gh-pulls" "Git pull requests API")

(eieio-defclass-autoload 'gh-pulls-request '(gh-pulls-request-stub) "gh-pulls" "Git pull requests API")

;;;***

;;;### (autoloads (gh-repos-repo gh-repos-repo-stub gh-repos-api)
;;;;;;  "gh-repos" "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-repos.el"
;;;;;;  "a385234156d7460d51a7e43b197ad58b")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-repos.el

(require 'eieio)

(eieio-defclass-autoload 'gh-repos-api '(gh-api-v3) "gh-repos" "Repos API")

(eieio-defclass-autoload 'gh-repos-repo-stub '(gh-object) "gh-repos" "Class for user-created repository objects")

(eieio-defclass-autoload 'gh-repos-repo '(gh-repos-repo-stub) "gh-repos" "Class for GitHub repositories")

;;;***

;;;### (autoloads nil "gh-url" "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-url.el"
;;;;;;  "5233beb5895ff22fc56cba24eea49af6")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-url.el

(require 'eieio)

;;;***

;;;### (autoloads (gh-users-user gh-users-api) "gh-users" "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-users.el"
;;;;;;  "1f5256d02936faab702d1936a2d1e1dc")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-users.el

(require 'eieio)

(eieio-defclass-autoload 'gh-users-api '(gh-api-v3) "gh-users" "Users API")

(eieio-defclass-autoload 'gh-users-user '(gh-user) "gh-users" nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-api.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-auth.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-cache.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-common.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-gist.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-issue-comments.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-issues.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-oauth.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-orgs.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-pkg.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-profile.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-pulls.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-repos.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-url.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh-users.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20140706.1506/gh.el")
;;;;;;  (21440 64610 403000 0))

;;;***

(provide 'gh-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gh-autoloads.el ends here

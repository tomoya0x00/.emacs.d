;;; gh-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "gh-api" "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-api.el"
;;;;;;  "5c6ab20217580b879accd3ed4e0bda3e")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-api.el

(require 'eieio)

(eieio-defclass-autoload 'gh-api 'nil "gh-api" "Github API")

(eieio-defclass-autoload 'gh-api-v3 '(gh-api) "gh-api" "Github API v3")

;;;***

;;;### (autoloads nil "gh-auth" "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-auth.el"
;;;;;;  "8b6a0c604702d9da75a77827a7ddd21f")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-auth.el

(require 'eieio)

(eieio-defclass-autoload 'gh-authenticator 'nil "gh-auth" "Abstract authenticator")

(eieio-defclass-autoload 'gh-password-authenticator '(gh-authenticator) "gh-auth" "Password-based authenticator")

(eieio-defclass-autoload 'gh-oauth-authenticator '(gh-authenticator) "gh-auth" "Oauth-based authenticator")

;;;***

;;;### (autoloads nil "gh-cache" "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-cache.el"
;;;;;;  "691a34d11fd5e51d0c82289de791088f")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-cache.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh-common" "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-common.el"
;;;;;;  "6a4c16b67da5711a3f27e2e35d5dfbf0")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-common.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh-gist" "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-gist.el"
;;;;;;  "31df857ce454c2056a8dfc829b813654")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-gist.el

(require 'eieio)

(eieio-defclass-autoload 'gh-gist-api '(gh-api-v3) "gh-gist" "Gist API")

(eieio-defclass-autoload 'gh-gist-gist-stub '(gh-object) "gh-gist" "Class for user-created gist objects")

(eieio-defclass-autoload 'gh-gist-gist '(gh-gist-gist-stub) "gh-gist" "Gist object")

;;;***

;;;### (autoloads nil "gh-issue-comments" "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-issue-comments.el"
;;;;;;  "4788bfa397bdd1c300c6338257ba08b1")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-issue-comments.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh-issues" "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-issues.el"
;;;;;;  "d67c03ac3962b0a7e0c7510dba3070ba")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-issues.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh-oauth" "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-oauth.el"
;;;;;;  "6a6e10c2a5195685fc0c77bb0e1df59f")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-oauth.el

(require 'eieio)

(eieio-defclass-autoload 'gh-oauth-api '(gh-api-v3) "gh-oauth" "OAuth API")

;;;***

;;;### (autoloads nil "gh-orgs" "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-orgs.el"
;;;;;;  "5e5937518df66a4dc454f0106708f46a")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-orgs.el

(require 'eieio)

(eieio-defclass-autoload 'gh-orgs-api '(gh-api-v3) "gh-orgs" "Orgs API")

(eieio-defclass-autoload 'gh-orgs-org-stub '(gh-object) "gh-orgs" nil)

;;;***

;;;### (autoloads nil "gh-pull-comments" "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-pull-comments.el"
;;;;;;  "63ee84fa38f80a08fe703a83f4d44eb9")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-pull-comments.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh-pulls" "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-pulls.el"
;;;;;;  "9ddb4a1267beb893d2f2c8167524262a")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-pulls.el

(require 'eieio)

(eieio-defclass-autoload 'gh-pulls-api '(gh-api-v3) "gh-pulls" "Git pull requests API")

(eieio-defclass-autoload 'gh-pulls-request '(gh-pulls-request-stub) "gh-pulls" "Git pull requests API")

;;;***

;;;### (autoloads nil "gh-repos" "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-repos.el"
;;;;;;  "6018460bccad08dcc0aba46268a7c7eb")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-repos.el

(require 'eieio)

(eieio-defclass-autoload 'gh-repos-api '(gh-api-v3) "gh-repos" "Repos API")

(eieio-defclass-autoload 'gh-repos-repo-stub '(gh-object) "gh-repos" "Class for user-created repository objects")

(eieio-defclass-autoload 'gh-repos-repo '(gh-repos-repo-stub) "gh-repos" "Class for GitHub repositories")

;;;***

;;;### (autoloads nil "gh-url" "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-url.el"
;;;;;;  "d470e506882984750a4e38b93e77fb52")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-url.el

(require 'eieio)

;;;***

;;;### (autoloads nil "gh-users" "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-users.el"
;;;;;;  "1f5256d02936faab702d1936a2d1e1dc")
;;; Generated autoloads from ../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-users.el

(require 'eieio)

(eieio-defclass-autoload 'gh-users-api '(gh-api-v3) "gh-users" "Users API")

(eieio-defclass-autoload 'gh-users-user '(gh-user) "gh-users" nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-api.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-auth.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-autoloads.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-cache.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-common.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-gist.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-issue-comments.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-issues.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-oauth.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-orgs.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-pkg.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-profile.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-pull-comments.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-pulls.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-repos.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-url.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh-users.el"
;;;;;;  "../../../../../../emacs/.emacs.d/elpa/gh-20160222.1811/gh.el")
;;;;;;  (22253 8843 432367 800000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; gh-autoloads.el ends here

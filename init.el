;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 各種設定
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ツールバーを表示しない
(tool-bar-mode 0)

;; フォント指定
(set-face-attribute 'default nil :family "MeiryoKe_Console" :height 140)

;; Coding system.
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;; 最終更新日の自動挿入
;;;   ファイルの先頭から 8 行以内に Time-stamp: <> または
;;;   Time-stamp: " " と書いてあれば、セーブ時に自動的に日付が挿入されます
(add-hook 'write-file-hooks 'time-stamp)

;; 常にカーソルの前後を表示
(setq scroll-margin 2)

;;; PageUp,PageDown の時にカーソル位置を保持
(setq scroll-preserve-screen-position t)

;;; yes,no を答えるかわりに，y,n にする
(fset 'yes-or-no-p 'y-or-n-p)

;;Emacs の終了時に本当に終了するか尋ねる
(setq confirm-kill-emacs 'y-or-n-p) ;; y-or-n で尋ねる

;;; startup message を消す
(setq inhibit-startup-message t)

;;; 警告音を消す
(set-message-beep 'silent)

;;; tab 幅
(setq-default tab-width 4)
(setq default-tab-width 4)
;;; インデントにタブを使う
(setq-default indent-tabs-mode t)

;;; インデント関数
(setq indent-line-function 'indent-relative-maybe)

;; HOME と END キーでバッファーの先頭/最後へ移動
(global-set-key [home] 'beginning-of-buffer)
(global-set-key [end] 'end-of-buffer)
;; C-c g で行番号を指定して移動
(global-set-key  "\C-cg" 'goto-line)
;; C-c ; で指定範囲をコメントアウト
(global-set-key  "\C-c;" 'comment-region)
;; C-SPCを無効
(global-set-key "\C-[SPC]"  nil)

;;backward-delete-char-untabify-method での消去方法を変える

(setq backward-delete-char-untabify-method nil)

;; ブラウザで開く
(global-set-key "\C-cb" 'browse-url-at-point)

;; compile
(global-set-key "\C-c\C-c" 'compile)
(global-set-key "\C-c\C-k" 'kill-compilation)
(global-set-key "\C-ce" 'next-error)

;;モードラインや日付を表示
(setq display-time-string-forms
  '((substring year -2) "/" month "/" day " " dayname))
(display-time)

;; モード名を短くする
;; Texinfo も長い
(add-hook 'texinfo-mode-hook
          '(lambda ()
             (setq mode-name "Texi")))
;; scratch バッファの Lisp Interaction も長い
(add-hook 'lisp-interaction-mode-hook
          '(lambda ()
             (setq mode-name "Lisp-Int")))
;; Emacs-Lisp も長い
(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (setq mode-name "Elisp")))

;; 指定した拡張子のファイルは保管候補に表示されない
(setq completion-ignored-extensions
      (append completion-ignored-extensions
              '(".exe" ".com" "elc" ".o")))

;; 拡張子と名前をセットで補完できる
;;(partial-completion-mode t)

;; 圧縮されたファイルを直接編集する
(auto-compression-mode)

;; リージョン内の文字を BS C-h C-d で削除
(when transient-mark-mode
 (defadvice backward-delete-char-untabify
   (around delete-region-like-windows activate)
   (if mark-active
       (delete-region (region-beginning) (region-end))
     ad-do-it))
 (defadvice delete-char
   (around delete-region-like-windows activate)
   (if mark-active
       (delete-region (region-beginning) (region-end))
     ad-do-it))
 (defadvice c-electric-delete-forward
   (around delete-region-like-windows activate)
   (if mark-active
       (delete-region (region-beginning) (region-end))
     ad-do-it))
 (defadvice delete-backward-char
   (around delete-region-like-windows activate)
   (if mark-active
       (delete-region (region-beginning) (region-end))
     ad-do-it))
(defadvice c-electric-backspace
   (around delete-region-like-windows activate)
   (if mark-active
       (delete-region (region-beginning) (region-end))
     ad-do-it)))

;; find-fileでバイナリファイルであればバイナリエディタで開く
(defvar YAMA-file-not-binary-extensions '()
  "バイナリとみなさないファイルの拡張子を
  (\"txt\") のようにリストで指定する
  ただし，すべて小文字で指定する")

(defvar YAMA-file-not-binary-files
  '("tags" "gsyms" "gpath" "grtags" "gsyms" "gtags")
  "バイナリとみなさないファイル名を指定する．
ただし，すべて小文字で指定のこと")

(defun YAMA-file-binary-p (file &optional full)
   "Return t if FILE contains binary data.  If optional FULL is non-nil,
check for the whole contents of FILE, otherwise check for the first
  1000-byte."
   (let ((coding-system-for-read 'binary)
         default-enable-multibyte-characters)
     (if (or
          (and
           (boundp 'image-types)
           (or
            (memq (intern (upcase (file-name-extension file)))
                  image-types)
            (memq (intern (downcase (file-name-extension file)))
                  image-types)))
          (member (downcase (file-name-extension file))
                  YAMA-file-not-binary-extensions)
          (member (downcase (file-name-nondirectory file))
                  YAMA-file-not-binary-files))
          nil
       (with-temp-buffer
         (insert-file-contents file nil 0 (if full nil 1000))
         (goto-char (point-min))
         (and (re-search-forward
               "[\000-\010\016-\032\034-\037]"
               nil t)
              t)))))

 (defadvice find-file (around YAMA-find-file (file &optional wild))
   (if (and
        (condition-case nil (YAMA-file-binary-p file) (error))
        (y-or-n-p "バイナリデータとして編集しますか?"))
       (hexl-find-file file)
     ad-do-it))

 (ad-activate 'find-file)

;; diredでディレクトリ移動時に勝手に新しいバッファを作らない
(defvar my-dired-before-buffer nil)
(defadvice dired-advertised-find-file
  (before kill-dired-buffer activate)
  (setq my-dired-before-buffer (current-buffer)))

(defadvice dired-advertised-find-file
  (after kill-dired-buffer-after activate)
  (if (eq major-mode 'dired-mode)
      (kill-buffer my-dired-before-buffer)))

(defadvice dired-up-directory
  (before kill-up-dired-buffer activate)
  (setq my-dired-before-buffer (current-buffer)))

(defadvice dired-up-directory
  (after kill-up-dired-buffer-after activate)
  (if (eq major-mode 'dired-mode)
      (kill-buffer my-dired-before-buffer)))

;; シェルに fakecygpty を使う (for SSH, GPG)
(setq mw32-process-wrapper-alist
      '(("/\\(bash\\|tcsh\\|svn\\|ssh\\|gpg[esvk]?\\)\\.exe" .
          (nil . ("fakecygpty.exe" . set-process-connection-type-pty)))))

;; C-h -> backspace
(keyboard-translate ?\C-h ?\C-?)

;; バッファ切り替え
;; (setq iswitchb-mode t)
;; (setq iswitchb-buffer-ignore '("^ " "^TAGS" "\\*GTAGS SELECT" "\\*Ibuffer\\*"))

;; 起動時のフレームサイズをディスプレイ解像度に応じて縦いっぱいに
(when window-system
 (set-frame-size
  (selected-frame)
  83 ;横サイズ
  (- (/ (- (x-display-pixel-height) 85) (frame-char-height)) 1)))

;; ibuffer
(setq ibuffer-default-sorting-mode 'recency)
(global-unset-key "\C-x\C-b")
(global-set-key "\C-x\C-b" 'ibuffer)

;; emacsclient
(require 'server)
(unless (server-running-p)
  (server-start))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ロードパスの追加
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs Lisp を簡単にインストールするための package.el & MELPA
;; -> http://qiita.com/ongaeshi/items/e81fca7a9797fe203e9f
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'package)

; Add package-archives
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

; Initialize
(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; cygwin-mount
;; -> http://www.emacswiki.org/cgi-bin/wiki/cygwin-mount.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'cygwin-mount)
(cygwin-mount-activate)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; http://namazu.org/~satoru/diary/?200203c&to=200203272#200203272
;; 編集中のファイルを開き直す
;; - yes/no の確認が不要;;   - revert-buffer は yes/no の確認がうるさい
;; - 「しまった! 」というときにアンドゥで元のバッファの状態に戻れる
;;   - find-alternate-file は開き直したら元のバッファの状態に戻れない
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun reopen-file ()
 (interactive)
 (let ((file-name (buffer-file-name))
       (old-supersession-threat
        (symbol-function 'ask-user-about-supersession-threat))
       (point (point)))
   (when file-name
     (fset 'ask-user-about-supersession-threat (lambda (fn)))
     (unwind-protect
         (progn
           (erase-buffer)
           (insert-file file-name)
           (set-visited-file-modtime)
           (goto-char point))
       (fset 'ask-user-about-supersession-threat
             old-supersession-threat)))))

;;(define-key ctl-x-map "\C-r"  'reopen-file)
(global-set-key "\C-cr" 'reopen-file)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; uniquify
;; 同一バッファ名をわかりやすくする
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; バッファ名を変更しないものを指定
(setq uniquify-ignore-buffers-re "*[^*]+*")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; *scratch*バッファを kill できないようにする
;; -> http://www-tsujii.is.s.u-tokyo.ac.jp/~yoshinag/tips/elisp_tips.html
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun my-make-scratch (&optional arg)
 (interactive)
 (progn
   ;; "*scratch*" を作成して buffer-list に放り込む
   (set-buffer (get-buffer-create "*scratch*"))
   (funcall initial-major-mode)
   (erase-buffer)
   (when (and initial-scratch-message (not inhibit-startup-message))
     (insert initial-scratch-message))
   (or arg (progn (setq arg 0)
                  (switch-to-buffer "*scratch*")))
   (cond ((= arg 0) (message "*scratch* is cleared up."))
         ((= arg 1) (message "another *scratch* is created")))))

(defun my-buffer-name-list ()
 (mapcar (function buffer-name) (buffer-list)))

(add-hook 'kill-buffer-query-functions
   ;; *scratch* バッファで kill-buffer したら内容を消去するだけにする
         (function (lambda ()
                     (if (string= "*scratch*" (buffer-name))
                         (progn (my-make-scratch 0) nil)
                       t))))

(add-hook 'after-save-hook
;; *scratch* バッファの内容を保存したら *scratch* バッファを新しく作る
         (function (lambda ()
                     (unless (member "*scratch*" (my-buffer-name-list))
                       (my-make-scratch 1)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; mcomplete.el
;; ミニバッファ補完機構の補強
;; -> http://homepage1.nifty.com/bmonkey/emacs/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(autoload 'mcomplete-mode "mcomplete"
;;  "Toggle minibuffer completion with prefix and substring matching."
;;  t nil)
;;(autoload 'turn-on-mcomplete-mode "mcomplete"
;;  "Turn on minibuffer completion with prefix and substring matching."
;;  t nil)
;;(autoload 'turn-off-mcomplete-mode "mcomplete"
;;  "Turn off minibuffer completion with prefix and substring matching."
;;  t nil)
;;
;;(turn-on-mcomplete-mode)
;;
;;;; mcomplete では標準でヒストリを使わない
;;(defcustom mcomplete-default-method-set
;;  '(mcomplete-prefix-method mcomplete-substr-method)
;;  "List of completion methods.  The first method is applied first."
;;  :type  '(repeat function)
;;  :group 'mcomplete)
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Window の分割情報を保存　タブも表示
;; -> http://www.bookshelf.jp/soft/meadow_30.html#SEC393
;; -> http://www.morishima.net/~naoto/software/elscreen/index.php.ja
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq elscreen-display-tab 12) ; タブの幅（６以上じゃないとダメ）
(setq elscreen-tab-display-kill-screen nil) ; タブの左端の×を非表示
(load "elscreen-gf" t)          ; grepなどを使えるように
(load "elscreen-color-theme" t) ; color-themeとの連携
(global-set-key [C-tab] 'elscreen-next)
(global-set-key [C-S-tab] 'elscreen-previous)

(elscreen-start)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; session.el
;; ミニバッファの保存や各ファイルに開いた際の行数のマークとかとか
;; -> http://moya-notes.blogspot.jp/2013/02/emacs24-config-on-mac.html
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'session)
(add-hook 'after-init-hook 'session-initialize)
(setq session-save-print-spec '(t nil nil))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; redo+.el
;; redo を可能に
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'redo+)
(global-set-key '[67108927] 'redo) ;; C-S-/

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-complete.el
;; テキスト補完入力
;; -> http://cx4a.org/software/auto-complete/index.ja.html
;; -> http://dev.ariel-networks.com/wp/documents/aritcles/emacs/part9
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'auto-complete)
(require 'go-autocomplete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; go-mode.el
;; -> http://unknownplace.org/archives/golang-editing-with-emacs.html
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)
(set-face-attribute 'eldoc-highlight-function-argument nil
                    :underline t :foreground "green"
                    :weight 'bold)

(require 'go-direx)

(add-hook 'go-mode-hook
          '(lambda()
            (setq c-basic-offset 4)
            (setq indent-tabs-mode t)
            (setq gofmt-command "goimports")
            (add-hook 'before-save-hook 'gofmt-before-save)
            (local-set-key (kbd "M-.") 'godef-jump)
            (local-set-key (kbd "M-,") 'pop-tag-mark)
            (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
            (local-set-key (kbd "C-c i") 'go-goto-imports)
            (local-set-key (kbd "C-m") 'newline-and-indent)
            (local-set-key (kbd "C-c C-j") 'go-direx-switch-to-buffer)
            (local-set-key (kbd "C-c d") 'godoc)
            (local-set-key (kbd "C-x f") 'go-test-current-file)
            (local-set-key (kbd "C-x t") 'go-test-current-test)
            (local-set-key (kbd "C-x p") 'go-test-current-project)
            (local-set-key (kbd "C-x x") 'go-run)

            (set (make-local-variable 'compile-command)
                 "go generate && go build -v && go test -v && go vet")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; flymake.el
;; -> http://unknownplace.org/archives/golang-editing-with-emacs.html
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(require 'go-flymake)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; flycheck.el
;; -> http://unknownplace.org/archives/golang-editing-with-emacs.html
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(add-hook 'after-init-hook #'global-flycheck-mode)
;;(require 'go-flycheck)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; howm.el
;; -> http://howm.sourceforge.jp/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; howm
(add-to-list 'load-path "~/.emacs.d/site-lisp/howm/")
(setq howm-directory "~/howm")
(setq howm-menu-lang 'ja)
(require 'howm)

;; リンクを TAB で辿る
(eval-after-load "howm"
  '(progn
     (define-key howm-mode-map [tab] 'action-lock-goto-next-link)
     (define-key howm-mode-map [(meta tab)] 'action-lock-goto-previous-link)))
;; 「最近のメモ」一覧時にタイトル表示
(setq howm-list-recent-title t)
;; 全メモ一覧時にタイトル表示
(setq howm-list-all-title t)
;; メニューを 2 時間キャッシュ
(setq howm-menu-expiry-hours 2)

(setq howm-menu-file "~/howm/0000-00-00-000000.howm")

;; howm の時は auto-fill で
;;(add-hook 'howm-mode-on-hook 'auto-fill-mode)

;; 完了済みのToDoは表示しない
(setq howm-todo-menu-types "[-+~!]")

;; RET でファイルを開く際, 一覧バッファを消す
;; C-u RET なら残る
(setq howm-view-summary-persistent nil)

;; メニューの予定表の表示範囲
(setq howm-menu-schedule-days-before 30)
(setq howm-menu-schedule-days 10)

;; howm のファイル名
;; 以下のスタイルのうちどれかを選んでください
;; で，不要な行は削除してください
;; 1 メモ 1 ファイル (デフォルト)
;(setq howm-file-name-format "%Y/%m/%Y-%m-%d-%H%M%S.howm")
;; 1 日 1 ファイルであれば
(setq howm-file-name-format "%Y/%m/%Y-%m-%d.howm")

(setq howm-view-grep-parse-line
      "^\\(\\([a-zA-Z]:/\\)?[^:]*\\.howm\\):\\([0-9]*\\):\\(.*\\)$")
;; 検索しないファイルの正規表現
(setq
 howm-excluded-file-regexp
 "/\\.#\\|[~#]$\\|\\.bak$\\|/CVS/\\|\\.doc$\\|\\.pdf$\\|\\.ppt$\\|\\.xls$\\|0000-00-00-000000.howm")

;; http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?SaveAndKillBuffer
;; C-cC-c で保存してバッファをキルする
(defun my-save-and-kill-buffer ()
  (interactive)
  (when (and
         (buffer-file-name)
         (string-match "\\.howm"
                       (buffer-file-name)))
    (save-buffer)
    (kill-buffer nil)))
(eval-after-load "howm-mode"
  '(progn
     (define-key howm-mode-map
       "\C-c\C-c" 'my-save-and-kill-buffer)))

;; いちいち消すのも面倒なので
;; 内容が 0 ならファイルごと削除する
(if (not (memq 'delete-file-if-no-contents after-save-hook))
    (setq after-save-hook
          (cons 'delete-file-if-no-contents after-save-hook)))
(defun delete-file-if-no-contents ()
  (when (and
         (buffer-file-name (current-buffer))
         (string-match "\\.howm" (buffer-file-name (current-buffer)))
         (= (point-min) (point-max)))
    (delete-file
     (buffer-file-name (current-buffer)))))

;; アウトラインモードと組み合わせる
;; * で表示・非表示を切り替え可能に
(autoload 'howm
  "howm-mode" "Hitori Otegaru Wiki Modoki" t)
(defadvice howm-mode
  (before outline-minor activate)
  (outline-minor-mode t))
(require 'outline)
(defun my-outline-flip-subtree (&optional dummy)
  (interactive)
  (if (save-excursion
        (forward-line 1)
        (let ((p (overlays-at (line-beginning-position)))
              (ol nil))
          (while (and p (not ol))
            (setq ol (overlay-get (car p) 'invisible))
            (setq p (cdr p)))
          ol))
      (show-subtree)
    (hide-subtree)))
(defun add-my-action-lock-rule ()
  (let ((rule
         (action-lock-general
          'my-outline-flip-subtree
          (if (and
               buffer-file-name
               (string-match "\\.howm$" buffer-file-name))
              "^ *\\(\\*\\**\\)"
            (concat "\\(" outline-regexp "\\)"))
          1 1)))
    (if (not (member rule action-lock-default-rules))
        (progn (setq action-lock-default-rules
                     (cons rule action-lock-default-rules))
               (action-lock-set-rules action-lock-default-rules)))))
(add-hook 'action-lock-mode-on-hook 'add-my-action-lock-rule)

;; howm-color タイトルが見づらいので、文字色変更
(set-face-foreground 'howm-mode-title-face "DeepSkyBlue")

;; hown一覧時にウィンドウ分割を壊さない設定
(setq riffle-keep-window t)
(setq riffle-window-initializer nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; fuzzy-format.el
;; インデントがタブかスペースか区別して良い感じに扱う
;; -> http://d.hatena.ne.jp/grandVin/20090114/1231910330
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'fuzzy-format)
(setq fuzzy-format-default-indent-tabs-mode nil)
(global-fuzzy-format-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; imenu
;; 関数定義へジャンプ
;; ->http://www.bookshelf.jp/cgi-bin/goto.cgi?file=meadow&node=imenu
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (autoload 'imenu "imenu" nil t)
;; (defcustom imenu-modes
;;  '(emacs-lisp-mode c-mode c++-mode makefile-mode)
;;  "List of major modes for which Imenu mode should be used."
;;  :group 'imenu
;;  :type '(choice (const :tag "All modes" t)
;;                 (repeat (symbol :tag "Major mode"))))
;; (defun my-imenu-ff-hook ()
;;  "File find hook for Imenu mode."
;;  (if (member major-mode imenu-modes)
;;      (imenu-add-to-menubar "imenu")))

;; (add-hook 'find-file-hooks 'my-imenu-ff-hook t)

;; ;; C-c C-gで imenu を起動
;; (global-set-key "\C-c\C-g" 'imenu)

;; ;; imenuでmcomplete
;; (defadvice imenu--completion-buffer
;;  (around mcomplete activate preactivate)
;;  "Support for mcomplete-mode."
;;  (require 'mcomplete)
;;  (let ((imenu-use-popup-menu 'never) 
;; ; (let ((imenu-always-use-completion-buffer-p 'never)
;;        (mode mcomplete-mode)
;;        ;; the order of completion methods
;;        (mcomplete-default-method-set '(mcomplete-substr-method
;;                                        mcomplete-prefix-method))
;;        ;; when to display completion candidates in the minibuffer
;;        (mcomplete-default-exhibit-start-chars 0)
;;        (completion-ignore-case nil)
;;        (partial-completion-mode t))
;;    ;; display *Completions* buffer on entering the minibuffer
;;    (setq unread-command-events
;;          (cons (funcall (if (fboundp 'character-to-event)
;;                             'character-to-event
;;                           'identity)
;;                         ?\?)
;;                unread-command-events))
;;    (turn-on-mcomplete-mode)
;;    (unwind-protect
;;        ad-do-it
;;      (unless mode
;;        (turn-off-mcomplete-mode)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 日本語でインクリメンタルサーチ
;; migemo
;; -> http://namazu.org/~satoru/migemo/
;; cmigemo
;; -> http://www.kaoriya.net/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 文字をバッファからコピーするときには
;; migemo をオフにする
(defadvice isearch-yank-string
  (before migemo-off activate)
  (setq migemo-isearch-enable-p nil))

;; isearch で検索する時には
;; migemo をオンにする
(defadvice isearch-mode
  (before migemo-on activate)
  (setq migemo-isearch-enable-p t))

;; buffer-file-coding-system から言語判別
;; unicode も入れた方がいいのかも。
(defun my-language-check (lang)
  (let ((coding
         (coding-system-base buffer-file-coding-system)))
    (memq
     coding
     (cdr (assoc 'coding-system
                 (assoc lang language-info-alist))))))

;; 日本語じゃないときは migemo を使わない
(eval-after-load "migemo"
  '(progn
     (defadvice isearch-mode
       (before my-migemo-off activate)
       (unless (my-language-check "Japanese")
         (make-local-variable 'migemo-isearch-enable-p)
         (setq migemo-isearch-enable-p nil)))
     (add-hook 'isearch-mode-end-hook
               (lambda ()
                 (unless (my-language-check "Japanese")
                   (setq migemo-isearch-enable-p t))))))


;; migemo
(require 'migemo)
(setq migemo-command "cmigemo")
;; "-i" "\a" for searching a word over multi-lines.
(setq migemo-options '("-q" "--emacs" "-i" "\a"))
(setq migemo-dictionary
        ".emacs.d/cmigemo/dict/utf-8/migemo-dict")
(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)
;; 辞書の文字コードを指定
(setq migemo-coding-system 'utf-8-unix)
;; 初期化
(migemo-init)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; insert timestamp
;; -> http://d.hatena.ne.jp/faw/20080601
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun insert-timestamp nil "insert timestamp"
 (interactive (insert (format  "[%s] " (format-time-string "%H:%M")))))

(global-set-key "\C-ct" 'insert-timestamp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; shell-command.el
;; M-! (shell-command) で補完が効くように
;; -> http://www.namazu.org/~tsuchiya/elisp/#shell-command-with-completion
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'shell-command)
(shell-command-completion-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; popwin.el
;; ヘルプバッファや補完バッファをポップアップ表示
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)

(setq popwin:popup-window-position 'bottom)

(push '("*anything*") popwin:special-display-config)
(push '("*occur*") popwin:special-display-config)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; color-moccur
;; -> http://www.bookshelf.jp/cgi-bin/goto.cgi?file=meadow&node=flush-lines
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'moccur-edit)
(setq moccur-split-word t)
(global-set-key "\C-c\C-f" 'moccur-grep-find)
(global-set-key "\C-c\C-m" 'moccur)
(global-set-key "\C-c\C-o" 'search-buffers)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ag
;; -> http://kotatu.org/blog/2013/12/18/emacs-ag-wgrep-for-code-grep-search/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'ag)
(custom-set-variables
 '(ag-highlight-search t)       ; 検索結果の中の検索語をハイライトする
 '(ag-reuse-window 'nil)        ; 現在のウィンドウを検索結果表示に使う
 '(ag-reuse-buffers 'nil))      ; 現在のバッファを検索結果表示に使う
(require 'wgrep-ag)
(autoload 'wgrep-ag-setup "wgrep-ag")
(add-hook 'ag-mode-hook 'wgrep-ag-setup)
;; agの検索結果バッファで"r"で編集モードに。
;; C-x C-sで保存して終了、C-x C-kで保存せずに終了
(define-key ag-mode-map (kbd "r") 'wgrep-change-to-wgrep-mode)
;; キーバインドを適当につけておくと便利。"\C-xg"とか
(global-set-key [(super m)] 'ag)
;; ag開いたらagのバッファに移動するには以下をつかう
(defun my/filter (condp lst)
  (delq nil
        (mapcar (lambda (x) (and (funcall condp x) x)) lst)))
(defun my/get-buffer-window-list-regexp (regexp)
  "Return list of windows whose buffer name matches regexp."
  (my/filter #'(lambda (window)
                 (string-match regexp
                               (buffer-name (window-buffer window))))
             (window-list)))
(global-set-key [(super m)]
                #'(lambda ()
                    (interactive)
                    (call-interactively 'ag)
                    (select-window      ; select ag buffer
                     (car (my/get-buffer-window-list-regexp "^\\*ag ")))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; pt
;; -> https://github.com/monochromegane/the_platinum_searcher
;; -> https://github.com/bling/pt.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; helm
;; -> http://d.hatena.ne.jp/tomoya/20130519/1368942603
;; -> http://d.hatena.ne.jp/a_bicky/20140104/1388822688
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'helm-config)

(require 'helm-migemo)
(setq helm-use-migemo t)

(require 'helm-descbinds)
(helm-descbinds-mode)

(helm-mode 1)

(global-unset-key [?\C-;])
(global-set-key [?\C-;] 	'helm-mini)
(global-set-key "\M-y" 		'helm-show-kill-ring)
(global-set-key "\M-o" 		'helm-occur)
;;(global-set-key "\M-x"     	'helm-M-x)
(global-set-key "\C-x\C-f" 'helm-find-files)
(global-unset-key "\C-x\C-r")
(global-set-key "\C-x\C-r" 	'helm-recentf)
(global-set-key "\C-c\C-g"  'helm-imenu)

;; isearchからhelm-occurを起動
(define-key isearch-mode-map (kbd "C-o") 'helm-occur-from-isearch)

(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)

;; Emulate `kill-line' in helm minibuffer
(setq helm-delete-minibuffer-contents-from-point t)
(defadvice helm-delete-minibuffer-contents (before helm-emulate-kill-line activate)
  "Emulate `kill-line' in helm minibuffer"
  (kill-new (buffer-substring (point) (field-end))))
;; For find-file etc.
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
;; For helm-find-files etc.
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)

(defadvice helm-ff-kill-or-find-buffer-fname (around execute-only-if-exist activate)
  "Execute command only if CANDIDATE exists"
  (when (file-exists-p candidate)
    ad-do-it))

(defadvice helm-ff-transform-fname-for-completion (around my-transform activate)
  "Transform the pattern to reflect my intention"
  (let* ((pattern (ad-get-arg 0))
         (input-pattern (file-name-nondirectory pattern))
         (dirname (file-name-directory pattern)))
    (setq input-pattern (replace-regexp-in-string "\\." "\\\\." input-pattern))
    (setq ad-return-value
          (concat dirname
                  (if (string-match "^\\^" input-pattern)
                      ;; '^' is a pattern for basename
                      ;; and not required because the directory name is prepended
                      (substring input-pattern 1)
                    (concat ".*" input-pattern))))))

(defun helm-buffers-list-pattern-transformer (pattern)
  (if (equal pattern "")
      pattern
    ;; Escape '.' to match '.' instead of an arbitrary character
    (setq pattern (replace-regexp-in-string "\\." "\\\\." pattern))
    (let ((first-char (substring pattern 0 1)))
      (cond ((equal first-char "*")
             (concat " " pattern))
            ((equal first-char "=")
             (concat "*" (substring pattern 1)))
            (t
             pattern)))))

(add-to-list 'helm-source-buffers-list
             '(pattern-transformer helm-buffers-list-pattern-transformer))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; magit
;; -> https://github.com/magit/magit
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-x g") 'magit-status)
(add-hook 'git-commit-mode-hook 'turn-off-auto-fill)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; c-mode用のいろいろな設定
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; キーバインドの追加
;; ------------------
;; C-m        改行＋インデント
;; C-h        空白の一括削除
(add-hook 'c-mode-common-hook
          '(lambda ()
             (c-set-style "user")
             (setq indent-tabs-mode nil)
             (setq tab-width 4)
             (setq c-basic-offset tab-width)
             (c-set-offset 'substatement-open 0)
             (define-key c-mode-base-map "\C-m" 'newline-and-indent)
             (define-key c-mode-base-map [?\M-\;]  'my-comment-dwim)
             (setq current-comment-prefix "/*")
             (define-key c-mode-base-map "\C-cf" 'ff-find-other-file)
))

;; /* */スタイルのコメントを挿入する
(defun my-comment-dwim(arg)
  (interactive "*P")
  (setq comment-start "/* "
        comment-end   " */")
  (comment-dwim arg)
  ;; 元に戻しておく
  (setq comment-start "// "
        comment-end   "")
  )

;; コンパイルコマンドの設定
(setq compile-command "make" )   ; GCC の make
(setq compilation-window-height 6)
;; 出力をスクロールして追いかける
(setq compilation-scroll-output t)

;;asm-mode
(add-hook 'asm-mode-hook
      (function
       (lambda ()
         (define-key asm-mode-map [return] 'newline)
        ))
)

(put 'upcase-region 'disabled nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; markdown-mode
;; -> http://jblevins.org/projects/markdown-mode/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
(setq markdown-command "perl C:/strawberry/script/Markdown.pl")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; http://ko.meadowy.net/~shirai/diary/20030819.html#p01
;; ミニバッファで一文字ずつ消すのではなく，
;; gnus-agent-batch を gnus-agent のように一区切り分を消すことができる
;; C-d で消せる
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defvar minibuf-shrink-type0-chars '((w3m-input-url-history . (?/ ?+ ?:))
                     (read-expression-history . (?\) ))
                     (t . (?/ ?+ ?~ ?:)))
  "*minibuffer-history-variable とセパレータと見なす character の alist。
type0 はセパレータを残すもの。")
 
(defvar minibuf-shrink-type1-chars '((file-name-history . (?.))
                     (w3m-input-url-history . (?# ?? ?& ?.))
                     (t . (?- ?_ ?. ? )))
  "*minibuffer-history-variable とセパレータと見なす character の alist。
type1 はセパレータを消去するもの。")
 
(defun minibuf-shrink-get-chars (types)
  (or (cdr (assq minibuffer-history-variable types))
      (cdr (assq t types))))
 
(defun minibuf-shrink (&optional args)
  "point が buffer の最後なら 1 word 消去する。その他の場合は delete-char を起動する。
単語のセパレータは minibuf-shrink-type[01]-chars。"
  (interactive "p")
  (if (/= (if (fboundp 'field-end) (field-end) (point-max)) (point))
      (delete-char args)
    (let ((type0 (minibuf-shrink-get-chars minibuf-shrink-type0-chars))
      (type1 (minibuf-shrink-get-chars minibuf-shrink-type1-chars))
      (count (if (<= args 0) 1 args))
      char)
      (while (not (zerop count))
    (when (memq (setq char (char-before)) type0)
      (delete-char -1)
      (while (eq char (char-before))
        (delete-char -1)))
    (setq count (catch 'detect
              (while (/= (if (fboundp 'field-beginning)
                     (field-beginning) (point-min))
                 (point))
            (setq char (char-before))
            (cond
             ((memq char type0)
              (throw 'detect (1- count)))
             ((memq char type1)
              (delete-char -1)
              (while (eq char (char-before))
                (delete-char -1))
              (throw 'detect (1- count)))
             (t (delete-char -1))))
              ;; exit
              0))))))
 
(defvar minibuf-expand-filename-original nil)
(defvar minibuf-expand-filename-begin nil)
 
(defun minibuf-expand-filename (&optional args)
  "file-name-history だったら minibuffer の内容を expand-file-name する。
連続して起動すると元に戻す。C-u 付きだと link を展開する。"
  (interactive "P")
  (when (eq minibuffer-history-variable 'file-name-history)
    (let* ((try-again (eq last-command this-command))
       (beg (cond
         ;; Emacs21.3.50 + ange-ftp だと2回目に変になる
         ((and try-again minibuf-expand-filename-begin)
          minibuf-expand-filename-begin)
         ((fboundp 'field-beginning) (field-beginning))
         (t (point-min))))
       (end (if (fboundp 'field-end) (field-end) (point-max)))
       (file (buffer-substring-no-properties beg end))
       (remote (when (string-match "^\\(/[^:/]+:\\)/" file)
             (match-string 1 file)))
       (home (if (string-match "^\\(/[^:/]+:\\)/" file)
             (expand-file-name (format "%s~" (match-string 1 file)))
           (expand-file-name "~"))))
      (unless try-again
    (setq minibuf-expand-filename-begin beg))
      (cond
       ((and args try-again minibuf-expand-filename-original)
    (setq file (file-chase-links (expand-file-name file))))
       (args
    (setq minibuf-expand-filename-original file)
    (setq file (file-chase-links (expand-file-name file))))
       ((and try-again minibuf-expand-filename-original)
    (setq file minibuf-expand-filename-original)
    (setq minibuf-expand-filename-original nil))
       (t
    (setq minibuf-expand-filename-original file)
    (if (string-match (concat "^" (regexp-quote home)) file)
        (if remote
        (setq file (concat remote "~" (substring file (match-end 0))))
          (setq file (concat "~" (substring file (match-end 0)))))
      (setq file (expand-file-name file)))))
      (delete-region beg end)
      (insert file))))

(mapcar (lambda (map)
      (define-key map "\C-d" 'minibuf-shrink)
      (define-key map "\M-\C-d" 'minibuf-expand-filename))
    (delq nil (list (and (boundp 'minibuffer-local-map)
                 minibuffer-local-map)
            (and (boundp 'minibuffer-local-ns-map)
                 minibuffer-local-ns-map)
            (and (boundp 'minibuffer-local-completion-map)
                 minibuffer-local-completion-map)
            (and (boundp 'minibuffer-local-must-match-map)
                 minibuffer-local-must-match-map))))


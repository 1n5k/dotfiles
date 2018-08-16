(aAA[AAdd-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (require 'package)
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.org/packages/"))
  (package-refresh-contents)
  (package-initialize)
  (package-install 'el-get)
  (require 'el-get))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;; auto-completeを適用
(el-get-bundle auto-complete)

;; dracula-themeを使用 
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)

;; 行を表示
(column-number-mode t)

;; 列を表示
(global-linum-mode t)
(setq linum-format "%5d| ")

;; C-kで1行切り取り
(setq kill-whole-line t)

;; linux
(when (eq system-type 'gnu/linux)
  ;; 日本語や絵文字を全角にして表示
  (add-to-list 'load-path "~/.emacs.d/site-lisp")
  (require 'eaw)
  (eaw-fullwidth)
  
  ;; 固定幅フォント
  (set-face-attribute 'fixed-pitch nil: family "Noto Sans Mono CJK JP")

  ;; 可変幅フォント
  (set-face-attribute 'variable-pitch nil: family "TakaoPGothic"))


;; Windows
(when (eq system-type 'windows-nt)
  ;; 固定等幅フォント
  (set-face-attribute 'fixed-pitch nil: family "MS Gothic")

  ;; 可変幅フォント
  (set-face-attribute 'variable-pitch nil: family "Yu Gothic UI"))B

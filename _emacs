(add-to-list 'load-path "~/.emacs.d")

;; mouse
(require 'mouse)
(xterm-mouse-mode t)

;; iswitch
(iswitchb-mode 1)
;; google code style
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
(add-hook 'c++-mode-common-hook 'google-set-c-style)
(add-hook 'c++-mode-common-hook 'google-make-newline-indent)
;; backup
(setq make-backup-files nil)
;; spaces
;(require 'whitespace)
;(global-whitespace-mode)
;(setq whitespace-style
;      '(face trailing tabs lines lines-tail empty
;        space-after-tab space-before-tab))
;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(el-get 'sync)
;;
;; lua
(add-to-list 'load-path "~/.emacs.d/el-get/lua-mode")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))
;; end lua

;;(semantic-mode 1)
(put 'downcase-region 'disabled nil)
(menu-bar-mode -1)
(tool-bar-mode -1)
(setq line-number-mode t)
(setq column-number-mode t)


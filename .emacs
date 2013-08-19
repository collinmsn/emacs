;; load path
(add-to-list 'load-path "~/.emacs.d")

;; file encoding 
(set-language-environment "UTF-8")

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

;; case convert
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;;
(menu-bar-mode -1)
(tool-bar-mode -1)
(setq line-number-mode t)
(setq column-number-mode t)
(setq transient-mark-mode t)
(window-system nil)

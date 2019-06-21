
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "themes" user-emacs-directory))

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))

;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
;; (require 'init-compat)
(require 'init-utils)

(require 'init-elpa)
;; (require 'init-exec-path) ;; Set up $PATH

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------

;;(require 'init-dired)
;; (require 'init-recentf)
;; (require 'init-ido)
(require 'init-ac-source)
(require 'init-auto-complete)
(require 'init-yasnippet)
;; (require 'init-evil)

;; (require 'init-vc)
;; (require 'init-darcs)
(require 'init-git)
(require 'init-sh)
(require 'init-comment)
(require 'init-smart-copy)
(require 'init-smarter-compile)
(require 'init-customer)
(require 'init-helm)
(require 'init-elpy)
;; (require 'server)
;; (unless (server-running-p)
;;   (server-start))
;; ;;----------------------------------------------------------------------------
;; ;; Locales (setting them earlier in this file doesn't work in X)
;; ;;----------------------------------------------------------------------------
;; (require 'init-locales)

;; (add-hook 'after-init-hook
;;            (lambda ()
;;              (message "init completed in %.2fms"
;;                       (sanityinc/time-subtract-millis after-init-time before-init-time))))
;; (require 'init-term-mode)
;;(require 'init-linum-mode)
(require 'init-gud)
(require 'init-themes)
(require 'molokai-theme)
;; (load-theme 'molokai t)
(require 'google-c-style)
(require 'init-flycheck)

;(require 'init-company)
(require 'init-gtags)
(require 'init-gud)
(require 'init-sh)
;; (require 'init-js)
(require 'go-autocomplete)
(require 'init-go)

(provide 'init)
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(package-selected-packages
;;    (quote
;;     (swagger-to-org ac-php go-guru use-package go-autocomplete go-mode dropdown-list flycheck smart-compile smarter-compile flymake-cppcheck dired+ evil multi-term virtualenv switch-window solarized-theme pos-tip monokai-theme magit helm-gtags fuzzy flymake-python-pyflakes elpy dracula-theme autopair auto-complete-clang ac-math)))
;;  '(send-mail-function (quote mailclient-send-it)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
;; (put 'downcase-region 'disabled nil)

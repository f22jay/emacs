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

;; (require 'init-dired)
;; (require 'init-recentf)
;; (require 'init-ido)
(require 'init-yasnippet)
(require 'init-auto-complete)
(require 'init-ac-source)
;; (require 'init-evil)

;; (require 'init-vc)
;; (require 'init-darcs)
(require 'init-git)
(require 'init-comment)
(require 'init-smart-copy)
(require 'init-smarter-compile)
(require 'init-customer)
(require 'init-helm)
(require 'init-elpy)
(require 'init-session)

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

(require 'molokai-theme)
(load-theme 'molokai t)
(require 'google-c-style)

(provide 'init)

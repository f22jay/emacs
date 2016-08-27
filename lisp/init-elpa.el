;;; Find and load the correct package.el

;; When switching between Emacs 23 and 24, we always use the bundled package.el in Emacs 24
(let ((package-el-site-lisp-dir
       (expand-file-name "site-lisp/package" user-emacs-directory)))
  (when (and (file-directory-p package-el-site-lisp-dir)
             (> emacs-major-version 23))
    (message "Removing local package.el from load-path to avoid shadowing bundled version")
    (setq load-path (remove package-el-site-lisp-dir load-path))))

(require 'package)


;;; Standard package repositories

;; decide whether to use secure connection for ELPA repositories
(defun add-address-prefix (addr)
  (if (and (boundp 'tls-checktrust)
	   (eq tls-checktrust 'ask))
      (concat "https://" addr)
    (concat "http://" addr)))

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

; We include the org repository for completeness, but don't normally
; use it.
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))

(when (< emacs-major-version 24)
  (add-to-list 'package-archives
               `("gnu" . ,(add-address-prefix "elpa.gnu.org/packages/"))))

; Also use Melpa for most packages
(add-to-list 'package-archives
             `("melpa" . ,(add-address-prefix "melpa.org/packages/")))
(add-to-list 'package-archives
             `("melpa-stable" . ,(add-address-prefix "stable.melpa.org/packages/")))

(package-initialize)
(provide 'init-elpa)

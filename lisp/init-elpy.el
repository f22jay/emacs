
(add-to-list 'load-path (expand-file-name "elpa" user-emacs-directory))
    (require 'elpy)
(elpy-enable)
(setq elpy-rpc-backend "jedi")
(global-linum-mode 1)

(provide 'init-elpy)

;; enable ido-mode, flexible-matching, virtual-buffer
(require-package 'session)
(add-hook 'after-init-hook
          'session-initialize)

(provide 'init-session)

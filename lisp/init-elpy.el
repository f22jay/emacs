(require-package 'elpy)
(require-package 'flymake-python-pyflakes)
(require-package 'virtualenv)
;; (require-package 'py-yapf)

(elpy-enable)
;; (setq elpy-rpc-backend "jedi")
 (add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
 (add-hook 'python-mode-hook 'flymake-mode)
;; (add-hook 'python-mode-hook 'yapf-mode)
;; (add-hook 'python-mode-hook 'py-yapf-enable-on-save)
(setq flymake-log-level 3)
(provide 'init-elpy)

;; NOTICE
;; pip install rope
;; pip install jedi
;; # flake8 for code checks
;; pip install flake8
;; # importmagic for automatic imports
;; pip install importmagic
;; # and autopep8 for automatic PEP8 formatting
;; pip install autopep8
;; # and yapf for code formatting
;; pip install yapf


;; fix ERROR
;; if elpy work error,
;; M-X : elpy-config

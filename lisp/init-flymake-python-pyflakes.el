(require-package 'flymake-python-pyflakes)
(require 'flymake-python-pyflakes)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
(add-hook 'python-mode-hook 'flymake-mode)
(add-hook 'python-mode-hook 'yapf-mode)

(provide 'init-flymake-python-pyflakes)

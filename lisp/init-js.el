;;; init-js.el --- js env                            -*- lexical-binding: t; -*-

;; Copyright (C) 2017

;; Author:  <zhangfangjie@st01-nova-rath7-f02-sys7.st01.baidu.com>
;; Keywords:

(require-package 'js2-mode)
;; (require-package 'espresso-theme)
(require 'js2-mode)
;; (require 'espresso)
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))

(provide 'init-js)

;;; init-color.el ---                         -*- lexical-binding: t; -*-

;; Copyright (C) 2017

;; Author:  <zhangfangjie@st01-nova-rath7-f02-sys7.st01.baidu.com>
;; Keywords:

(require-package 'dracula-theme)
(require-package 'solarized-theme)
(require-package 'monokai-theme)

;;solarized must run termfio, generate 24-bits color
;;tic -x -o ~/.terminfo ~/.emacs.d/lisp/terminfo-24bit.src
;; set tmux if need
;;set -g default-terminal screen-256color
;; set-option -ga terminal-overrides ",*256col*:Tc" # 这句是关键
;; set emacs
;;alias e='TERM=xterm-24bits emacs -nw'
(require-package 'spacemacs-theme)
(require-package 'zenburn-theme)

;; (load-theme 'dracula t)
(load-theme 'solarized-dark t)
;; (load-theme 'spacemacs-dark t)
;; (load-theme 'zenburn t)

;; (load-theme 'monokai t)

(provide 'init-themes)

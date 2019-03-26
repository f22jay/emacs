;export GOROOT="/usr/lib/go-1.6"
;export GOBIN=$GOROOT/bin
;export GOPATH="/home/moon/gopath"
;export PATH=$PATH:$GOPATH/bin:$GOBIN
;root mode
;go get -u github.com/nsf/gocode
;go get -u github.com/nsf/godef
;go get -u github.com/dougm/goflymake
(require 'go-mode)
(require 'go-autocomplete)
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook (lambda()
                          (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

(ac-config-default)
;; 设置为t表示忽略大小写，设置为nil表示区分大小写
;; 默认情况下为smart，表示如果输入的字符串不含有大写字符才会忽略大小写
(setq ac-ignore-case t)
(add-hook 'go-mode-hook #'(lambda() (setq ac-sources '(ac-source-go ac-source-abbrev ac-source-dictionary))))
(add-hook 'go-mode-hook '(lambda ()
                          (local-set-key (kbd "M-.") 'godef-jump)))


(add-hook 'go-mode-hook
          (lambda ()
            (setq indent-tabs-mode 1)
            (setq tab-width 4)))
(provide 'init-go)

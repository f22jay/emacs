;export GOROOT="/usr/lib/go-1.6"
;export GOBIN=$GOROOT/bin
;export GOPATH="/home/moon/gopath"
;export PATH=$PATH:$GOPATH/bin:$GOBIN
;root mode
;go get -u github.com/nsf/gocode
;go get -u github.com/nsf/godef
;go get -u github.com/dougm/goflymake
;go get golang.org/x/tools/cmd/guru  ;; 注意go-uru-set-scope设置包路径，直接看函数注释
(require 'go-mode)
(require 'go-autocomplete)
(require 'auto-complete-config)
(require 'go-dlv)
(ac-config-default)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))
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

(defun go-run-currernt-buf ()
  (let (
        (cmd  (concat "go run " (buffer-name))))
  (message cmd)
  (shell-command cmd)
  )
)

(defun go-test-currernt-buf ()
  (let (
        (cmd  (concat "go test -v " (buffer-name))))
  (message cmd)
  (shell-command cmd)
  )
)

(global-set-key (kbd "C-c r") (lambda () (interactive) (go-run-currernt-buf)))
(global-set-key (kbd "C-c t") (lambda () (interactive) (go-test-currernt-buf)))

(setq compile-command "go build -v && go vet && golint && go test -v")

(let ((govet (flycheck-checker-get 'go-vet 'command)))
 (when (equal (cadr govet) "tool")
   (setf (cdr govet) (cddr govet))))

(add-hook 'go-mode-hook
          (lambda ()
            (setq indent-tabs-mode 1)
            (setq tab-width 4)))
(provide 'init-go)

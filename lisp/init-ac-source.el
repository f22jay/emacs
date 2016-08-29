;; add ac-sources for latex mode
(require-package 'ac-math)
(require 'ac-math)
(add-to-list 'ac-modes 'latex-mode)
(defun ac-latex-mode-setup ()
  (setq ac-sources
        (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
                ac-sources))
  )
(add-hook 'latex-mode-hook 'ac-latex-mode-setup)
(add-hook 'LaTeX-mode-hook 'ac-latex-mode-setup)

;; add ac-source for clang
(require-package 'auto-complete-clang)
(require 'auto-complete-clang)
(setq ac-clang-flags
      (append '("-std=c++11")
              (mapcar (lambda (item) (concat "-I" item))
                      (split-string
                       "
 /usr/include
 /usr/local/include
 /home/opt/gcc-4.8.2.bpkg-r2/gcc-4.8.2.bpkg-r2/sbin/../lib/gcc/x86_64-baidu-linux-gnu/4.8.2/../../../../include/c++/4.8.2
 /home/opt/gcc-4.8.2.bpkg-r2/gcc-4.8.2.bpkg-r2/sbin/../lib/gcc/x86_64-baidu-linux-gnu/4.8.2/../../../../include/c++/4.8.2/x86_64-baidu-linux-gnu
 /home/opt/gcc-4.8.2.bpkg-r2/gcc-4.8.2.bpkg-r2/sbin/../lib/gcc/x86_64-baidu-linux-gnu/4.8.2/../../../../include/c++/4.8.2/backward
 /home/opt/gcc-4.8.2.bpkg-r2/gcc-4.8.2.bpkg-r2/sbin/../lib/gcc/x86_64-baidu-linux-gnu/4.8.2/include
 /home/opt/gcc-4.8.2.bpkg-r2/gcc-4.8.2.bpkg-r2/sbin/../lib/gcc/x86_64-baidu-linux-gnu/4.8.2/include-fixed
 /home/opt/gcc-4.8.2.bpkg-r2/gcc-4.8.2.bpkg-r2/sbin/../x86_64-baidu-linux-gnu/sys-root//include
"
                       ))))
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)

(provide 'init-ac-source)

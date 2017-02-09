(global-set-key (kbd "M-4") 'delete-window)
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-vertically)
(global-set-key (kbd "M-3") 'split-window-horizontally)
(global-set-key (kbd "M-0") 'other-window)
(global-set-key (kbd "M-s M-s") 'shell)
(global-set-key ( kbd "C-\\") 'redo)
(global-set-key ( kbd "C-/") 'undo)
(global-set-key ( kbd "C-_") 'undo)
(global-set-key "\M-r" 'replace-string)
(global-set-key (kbd "M-s 1") 'insert-baidu-comment-1)
(global-set-key (kbd "M-s 2") 'insert-baidu-comment-2)
(global-set-key (kbd "M-s 3") 'insert-baidu-comment-python)
(global-set-key (kbd "M-s m") 'insert-my-comment-1)
(global-set-key (kbd "M-s r") 'revert-buffer)
(global-set-key (kbd "M-s ,") 'rename-buffer)
(global-set-key (kbd "M-s .") 'isearch-forward-symbol-at-point)
(global-set-key (kbd "M-s k") 'kill-this-buffer)

;; set command preffix
;; (define-prefix-command 'alt-z-map)
;; (global-set-key (kbd "M-c") 'alt-z-map)
(global-set-key (kbd "M-s p") 'dired-up-directory)
(global-set-key (kbd "M-s e") 'eval-buffer)

(global-set-key (kbd "M-k") 'qiang-copy-line)
;switch window
(global-set-key (kbd "M--") 'switch-to-prev-buffer)
(global-set-key (kbd "M-=") 'switch-to-next-buffer)
;; delete the last space
;; (global-set-key (kbd "C-<") 'delete-trailing-whitespace)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(global-set-key (kbd "M-;") 'comment-or-uncomment-region)

;; <F11> -> start grep
(define-key global-map [(f11)] 'rgrep)

;; <F6> -> start find
(define-key global-map [(f6)] 'find-dired)

(define-key global-map [(f8)] 'smarter-compile)

(setq default-buffer-file-coding-system 'utf-8)

;; <F9> -> Save all file
;;(define-key global-map [(f9)] 'save-some-buffers)
;; <F9> -> linum-mode
(define-key global-map [(f9)] 'linum-mode)

;; insert-current-time
(defun insert-current-date ()
    "Insert the current date"
    (interactive "*")
    (insert (format-time-string "%Y/%m/%d %H:%M:%S" (current-time))))
    ;; (insert (format-time-string "%Y/%m/%d" (current-time))))
    (global-set-key "\C-xt" 'insert-current-date)

(defun insert-baidu-comment-1()
  (interactive)
  (insert (message "//-*-c++-*-
// Copyright 2016 Baidu Inc. All Rights Reserved.
// Author : zhangfangjie (zhangfangjie@baidu.com)
// Date %s
// Breif :

" (format-time-string "%Y/%m/%d %H:%M:%S" (current-time)))))


(defun insert-my-comment-1()
  (interactive)
  (insert (message "// Copyright maverick Inc. All Rights Reserved.
// Author : zhangfangjie (f22jay@163.com)
// Date %s
// Breif :

" (format-time-string "%Y/%m/%d %H:%M:%S" (current-time)))))

(defun insert-baidu-comment-2()
  (interactive)
  (insert (message "/** **************************************************************************
*
*         Copyright (c) 2016 Baidu.cOm, Inc. All Rights Reserved
*
x* ****************************************************************************
*/

/**
* @File %s
* @Author zhangfangjie <zhangfangjie@baidu.com>
* @Date %s
* @Version 1.0
* @Brief :
**/
" (current-buffer) (format-time-string "%Y/%m/%d %H:%M:%S" (current-time)))))

(defun insert-baidu-comment-python()
  (interactive)
  (insert (message "################################################################################
#
# Copyright (c) 2016 Baidu.com, Inc. All Rights Reserved
#
################################################################################
\"\"\"
Breif:
Authors: zhangfangjie(zhangfangjie@baidu.com)
Date:    %s
\"\"\"
"  (format-time-string "%Y/%m/%d %H:%M:%S" (current-time)))))

(defun insert-baidu-comment-shell()
  (interactive)
  (insert (message "#!/usr/bin/env bash
################################################################################
#
# Copyright (c) 2016 Baidu.com, Inc. All Rights Reserved
#
################################################################################
#Breif:
#Authors: zhangfangjie(zhangfangjie@baidu.com)
#Date:    %s
"  (format-time-string "%Y/%m/%d %H:%M:%S" (current-time)))))


(prefer-coding-system 'gbk) ; ´ËÊ±bufferÐÂ½¨ºÍ¶ÁÈ¡¶¼Ä¬ÈÏÊÇgbk,Ò²¿ÉÒÔM-x prefer-coding-system Ö»Ö´ÐÐÒ»´Î
(setq default-buffer-file-coding-system 'gbk)

;;设定行距
(setq default-line-spacing 0)

;;页宽
(setq default-fill-column 90)

;;缺省模式 text-mode
;; (setq default-major-mode 'text-mode)

;;设置删除纪录
(setq kill-ring-max 200)
;;以空行结束
(setq require-final-newline t)
;;高亮显示区域选择
(transient-mark-mode t)

;高亮显示成对括号，但不来回弹跳
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;使用 y or n 提问
(fset 'yes-or-no-p 'y-or-n-p)

;;锁定行高
(setq resize-mini-windows nil)
;;显示时间
(display-time)
;;时间格式
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-interval 10)

;;显示列号
(setq column-number-mode t)

;;标题栏显示 %f 缓冲区完整路径 %p 页面百分数 %l 行号
(setq frame-title-format "%f")


;;只渲染当前屏幕语法高亮，加快显示速度
(setq font-lock-maximum-decoration t)


;;使用X剪贴板
(setq x-select-enable-clipboard t)
;;;;;;;; 使用空格缩进 ;;;;;;;;
;; indent-tabs-mode  t 使用 TAB 作格式化字符  nil 使用空格作格式化字符
(setq indent-tabs-mode nil)
(setq tab-always-indent nil)
(setq tab-width 4)
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)

(defun redo (&optional count)
  "Redo the the most recent undo.
Prefix arg COUNT means redo the COUNT most recent undos.
If you have modified the buffer since the last redo or undo,
then you cannot redo any undos before then."
  (interactive "*p")
  (if (eq buffer-undo-list t)
      (error "No undo information in this buffer"))
  (if (eq last-buffer-undo-list nil)
      (error "No undos to redo"))
  (or (eq last-buffer-undo-list buffer-undo-list)
      ;; skip one undo boundary and all point setting commands up
      ;; until the next undo boundary and try again.
      (let ((p buffer-undo-list))
	(and (null (car-safe p)) (setq p (cdr-safe p)))
	(while (and p (integerp (car-safe p)))
	  (setq p (cdr-safe p)))
	(eq last-buffer-undo-list p))
      (error "Buffer modified since last undo/redo, cannot redo"))
  (and (or (eq buffer-undo-list pending-undo-list)
	   (eq (cdr buffer-undo-list) pending-undo-list))
       (error "No further undos to redo in this buffer"))
  (or (eq (selected-window) (minibuffer-window))
      (message "Redo..."))
  (let ((modified (buffer-modified-p))
	(undo-in-progress t)
	(recent-save (recent-auto-save-p))
	(old-undo-list buffer-undo-list)
	(p (cdr buffer-undo-list))
	(records-between 0))
    ;; count the number of undo records between the head of the
    ;; undo chain and the pointer to the next change.  Note that
    ;; by `record' we mean clumps of change records, not the
    ;; boundary records.  The number of records will always be a
    ;; multiple of 2, because an undo moves the pending pointer
    ;; forward one record and prepend a record to the head of the
    ;; chain.  Thus the separation always increases by two.  When
    ;; we decrease it we will decrease it by a multiple of 2
    ;; also.
    (while p
      (cond ((eq p pending-undo-list)
	     (setq p nil))
	    ((null (car p))
	     (setq records-between (1+ records-between))
	     (setq p (cdr p)))
	    (t
	     (setq p (cdr p)))))
    ;; we're off by one if pending pointer is nil, because there
    ;; was no boundary record in front of it to count.
    (and (null pending-undo-list)
	 (setq records-between (1+ records-between)))
    ;; don't allow the user to redo more undos than exist.
    ;; only half the records between the list head and the pending
    ;; pointer are undos that are a part of this command chain.
    (setq count (min (/ records-between 2) count)
	  p (primitive-undo (1+ count) buffer-undo-list))
    (if (eq p old-undo-list)
            nil ;; nothing happened
      ;; set buffer-undo-list to the new undo list.  if has been
      ;; shortened by `count' records.
      (setq buffer-undo-list p)
      ;; primitive-undo returns a list without a leading undo
      ;; boundary.  add one.
      (undo-boundary)
      ;; now move the pending pointer backward in the undo list
      ;; to reflect the redo.  sure would be nice if this list
      ;; were doubly linked, but no... so we have to run down the
      ;; list from the head and stop at the right place.
      (let ((n (- records-between count)))
	(setq p (cdr old-undo-list))
	(while (and p (> n 0))
	  (if (null (car p))
	      (setq n (1- n)))
	  (setq p (cdr p)))
	(setq pending-undo-list p)))
    (and modified (not (buffer-modified-p))
	 (delete-auto-save-file-if-necessary recent-save))
    (or (eq (selected-window) (minibuffer-window))
	(message "Redo!"))
    (setq last-buffer-undo-list buffer-undo-list)))

(defun undo (&optional arg)
  "Undo some previous changes.
Repeat this command to undo more changes.
A numeric argument serves as a repeat count."
  (interactive "*p")
  (let ((modified (buffer-modified-p))
	(recent-save (recent-auto-save-p)))
    (or (eq (selected-window) (minibuffer-window))
	(message "Undo..."))
    (or (eq last-buffer-undo-list buffer-undo-list)
	;; skip one undo boundary and all point setting commands up
	;; until the next undo boundary and try again.
	(let ((p buffer-undo-list))
	  (and (null (car-safe p)) (setq p (cdr-safe p)))
	  (while (and p (integerp (car-safe p)))
	    (setq p (cdr-safe p)))
	  (eq last-buffer-undo-list p))
	(progn (undo-start)
	       (undo-more 1)))
    (undo-more (or arg 1))
    ;; Don't specify a position in the undo record for the undo command.
    ;; Instead, undoing this should move point to where the change is.
    ;;
    ;;;; The old code for this was mad!  It deleted all set-point
    ;;;; references to the position from the whole undo list,
    ;;;; instead of just the cells from the beginning to the next
    ;;;; undo boundary.  This does what I think the other code
    ;;;; meant to do.
    (let ((list buffer-undo-list)
    	  (prev nil))
      (while (and list (not (null (car list))))
    	(if (integerp (car list))
    	    (if prev
    		(setcdr prev (cdr list))
    	      ;; impossible now, but maybe not in the future
    	      (setq buffer-undo-list (cdr list))))
    	(setq prev list
    	      list (cdr list))))
    (and modified (not (buffer-modified-p))
	 (delete-auto-save-file-if-necessary recent-save)))
  (or (eq (selected-window) (minibuffer-window))
      (message "Undo!"))
  (setq last-buffer-undo-list buffer-undo-list))

(require-package 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defun my-comment-or-uncomment-region (beg end &optional arg)
  (interactive (if (use-region-p)
                   (list (region-beginning) (region-end) nil)
                 (list (line-beginning-position)
                       (line-beginning-position 2))))
  (comment-or-uncomment-region beg end arg)
  )
(global-set-key [remap comment-or-uncomment-region] 'my-comment-or-uncomment-region)

;;set C indent-style
;; (add-hook 'c-mode-hook 'linux-c-mode)
;; (add-hook 'c++-mode-hook 'linux-cpp-mode)
(add-hook 'c-mode-hook 'google-set-c-style)
(add-hook 'c++-mode-hook 'google-set-c-style)

(defun linux-c-mode ()
  (define-key c-mode-map [return] 'newline-and-indent)
  (interactive)
  (c-set-style "K&R")
  (c-toggle-hungry-state)
  (setq tab-width 4)
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 4)
  (imenu-add-menubar-index)
  (which-function-mode 1))
  ;; (c-toggle-auto-state)  ;;¹Ø±Õ;×Ô¶¯»»ÐÐ

(defun linux-cpp-mode()
  (define-key c++-mode-map [return] 'newline-and-indent)
  (interactive)
  (c-set-style "stroustrup")
  (c-toggle-hungry-state)
  (setq tab-width 4)
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 4)
  (imenu-add-menubar-index)
  (which-function-mode 1))


(global-linum-mode 1)
(global-set-key (kbd "M-,") 'pop-tag-mark)
;; autosave opens file list, next open emacs will open these buffer
;; (desktop-save-mode 1)


(auto-insert-mode)
(setq auto-insert-query nil)
(define-auto-insert "\\.py" 'insert-baidu-comment-python)
(define-auto-insert "\\.\\([Cc]\\|cc\\|cpp\\|h\\)\\'" 'insert-baidu-comment-1)
(define-auto-insert "\\.sh" 'insert-baidu-comment-shell)

;; (setq wcy-shell-mode-directory-changed t)

;; (defun wcy-shell-mode-auto-rename-buffer-output-filter (text)
;;   (if (and (eq major-mode 'shell-mode)
;;            wcy-shell-mode-directory-changed)
;;       (progn
;;         (let ((bn  (concat "sh:" default-directory)))
;;           (if (not (string= (buffer-name) bn))
;;               (rename-buffer bn t)))
;;         (setq wcy-shell-mode-directory-changed nil))))


;; (defun wcy-shell-mode-auto-rename-buffer-input-filter (text)
;;   (if (eq major-mode 'shell-mode)
;;       (if ( string-match "^[ \t]*cd *" text)
;;           (setq wcy-shell-mode-directory-changed t))))
;; (add-hook 'comint-output-filter-functions 'wcy-shell-mode-auto-rename-buffer-output-filter)
;; (add-hook 'comint-input-filter-functions 'wcy-shell-mode-auto-rename-buffer-input-filter )
;; ;;exit shell and exit buffer
;; (add-hook 'shell-mode-hook 'wcy-shell-mode-hook-func)
;; (defun wcy-shell-mode-hook-func  ()
;;   (set-process-sentinel (get-buffer-process (current-buffer))
;;                             #'wcy-shell-mode-kill-buffer-on-exit)
;;       )
;; (defun wcy-shell-mode-kill-buffer-on-exit (process state)
;;   (message "%s" state)
;;   (if (or
;;        (string-match "exited abnormally with code.*" state)
;;        (string-match "finished" state))
;;       (kill-buffer (current-buffer))))
;;use ipython
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i")
;; 在.emacs文件中添加下面这行表示使用拷贝模式
;; (setq backup-by-copying t) ;; 默认是nil，开启之后使用拷贝模式
;; 将~备份文件移到save目录
(setq backup-directory-alist `(("." . "~/.saves")))
(provide 'init-customer)

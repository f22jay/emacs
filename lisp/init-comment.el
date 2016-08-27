;; insert-current-time
(defun insert-current-date ()
    "Insert the current date"
    (interactive "*")
    (insert (format-time-string "%Y/%m/%d %H:%M:%S" (current-time))))
    ;; (insert (format-time-string "%Y/%m/%d" (current-time))))
    (global-set-key "\C-xt" 'insert-current-date)

(defun insert-baidu-comment-1()
  (interactive)
  (insert "// Copyright 2016 Baidu Inc. All Rights Reserved.
// Author : zhangfangjie (zhangfangjie@baidu.com)
//
// Breif :
"))

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


(prefer-coding-system 'gbk) ; ´ËÊ±bufferÐÂ½¨ºÍ¶ÁÈ¡¶¼Ä¬ÈÏÊÇgbk,Ò²¿ÉÒÔM-x prefer-coding-system Ö»Ö´ÐÐÒ»´Î
(setq default-buffer-file-coding-system 'gbk)
(provide 'init-comment)

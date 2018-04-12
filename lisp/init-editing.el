(defun indent-buffer ()
  "Indent current buffer"
  (interactive)
  (save-excursion 
    (indent-region (point-min) (point-max) nil)
    (untabify (point-min) (point-max))))


(global-set-key (kbd "C-M-\\") 'indent-buffer)
(recentf-mode t)
(delete-selection-mode 1)
;; Open recentf file
(global-set-key (kbd "<f9>") 'recentf-open-files)
(provide 'init-editing)

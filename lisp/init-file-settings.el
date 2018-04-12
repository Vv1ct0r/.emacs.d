;; Files
;;; Don't make backup file
(setq make-backup-files nil)
;;; Open config file
(defun open-init-file ()
  "Open emacs init file"
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f5>") 'open-init-file)

;;; Delete the current file
(defun delete-this-file ()
  "Delete the current file, and kill this buffer"
  (interactive)
  (unless (buffer-file-name)
    (error "This file haven't created"))
  (when (yes-or-no-p (format "Really delete '%s'?"
			     (file-name-nondirectory buffer-file-name)))
    (delete-file (buffer-file-name))
    (kill-this-buffer)))

(provide 'init-file-settings)

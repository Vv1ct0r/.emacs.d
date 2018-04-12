(require 'helm)
(require 'helm-config)
;; rebind tab to run presistent action
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
;; make TAB works in terminal
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
;; list actions using C-z
(define-key helm-map (kbd "C-z") 'helm-select-action)
(setq helm-split-window-in-side-p t
      helm-ff-file-name-history-use-recentf t)
(setq helm-autoresize-max-height 0)
(setq helm-autoresize-min-height 30)
(helm-autoresize-mode 1)

(helm-mode 1)
(provide 'init-helm)

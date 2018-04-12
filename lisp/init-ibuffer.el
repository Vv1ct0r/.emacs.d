(require 'ibuffer)
(require 'ibuf-ext)
(global-set-key (kbd "C-x C-b") 'ibuffer)
;; (add-to-list 'ibuffer-never-show-predicates "^\\*")
(setq ibuffer-saved-filter-groups
      (quote (("default"
	       ("dired" (mode . dired-mode))
	       ("planner" (or
			   (name . "\\^Calendar\\*$")
			   (name . "^diary$")
			   (mode . muse-mode)))
	       ("emacs" (or
			 (name . "^\\*scratch\\*$")
			 (name . "^\\*Messages\\*$")))
	       ("helm" (name . ".\\*helm"))))))

(add-hook 'ibuffer-mode-hook
	  (lambda ()
	    (ibuffer-sxwitch-to-saved-filter-groups "default")))


(provide 'init-ibuffer)

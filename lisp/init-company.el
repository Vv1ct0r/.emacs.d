(require 'company)

(add-to-list 'completion-styles 'initials t)
(setq completion-cycle-threshold 5)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-backends '(company-clang
			 company-elisp
			 company-keywords
			 company-files))

(provide 'init-company)

(require 'slime)
(setq slime-contribs '(slime-fancy))
(setq inferior-lisp-program "d:/Tools/sbcl/sbcl/1.4.2/sbcl.exe")
;; show parens
(setq show-paren-delay 0)
(setq show-paren-style 'parenthesis)
(show-paren-mode 1)
(provide 'init-common-lisp)



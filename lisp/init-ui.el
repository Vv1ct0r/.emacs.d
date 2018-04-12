;; Basic UI
;;; Startup
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)
(setq-default initial-scratch-message
              (concat ";; Happy hacking, " user-login-name " - Emacs ♥ you!\n\n"))
;;; Font
;;;; Linux
;;;; (set-frame-font "-JF  -CamingoCode-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")
;;;;Windows
;;(set-frame-font "-outline-CamingoCode-normal-normal-normal-mono-*-*-*-*-c-*-iso")
;; Setting English Font
(set-face-attribute
  'default nil :font "Consolas 11")
 
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                      charset
                      (font-spec :family "Microsoft Yahei" :size 14)))
;;; Line
;;(global-linum-mode t)  ;;原来卡的是你

;;; Theme
(load "~/.emacs.d/dracula-theme.el")

;;; Bars
(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)

(provide 'init-ui)

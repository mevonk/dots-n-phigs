;;; core-settings.el --- Emacs general settings

;; cursor appearance
(blink-cursor-mode 1)
(setq-default cursor-type 'block)

;; highlight the current line
(global-hl-line-mode t)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; turn off bell noise
(setq ring-bell-function 'ignore)

;; disable startup screen
(setq inhibit-startup-screen t)
;; show keystrokes in minibuffer in realtime
(setq echo-keystrokes 0.1)

;; paren mode settings
(show-paren-mode 1)
(setq show-paren-delay 0.1)

;; change default scratch buffer text
;;(setq initial-scratch-message ";; scratch buffer created -- Happy Hacking!!!")
;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; UTF-8 as default encoding
(set-language-environment "UTF-8")

(provide 'core-settings)

;;; core-setting.el end here

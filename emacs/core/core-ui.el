;; You will most likely need to adjust this font size for your system!
(defvar cr/default-font-size 150)
(defvar cr/default-variable-font-size 150)

;; Make frame transparency overridable
(defvar cr/frame-transparency '(70 . 70))

;; Set up the visible bell
;; (setq visible-bell t)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; Set frame transparency
(set-frame-parameter (selected-frame) 'alpha cr/frame-transparency)
(add-to-list 'default-frame-alist `(alpha . ,cr/frame-transparency))
(set-frame-parameter (selected-frame) 'fullscreen 'maximized)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
                term-mode-hook
                shell-mode-hook
                treemacs-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

(set-face-attribute 'default nil :font "Iosevka NFM" :height cr/default-font-size)

;; Set the fixed pitch face
(set-face-attribute 'fixed-pitch nil :font "Iosevka NFM" :height cr/default-font-size)

;; Set the variable pitch face
(set-face-attribute 'variable-pitch nil :font "Iosevka NFM" :height cr/default-variable-font-size :weight 'regular)

;; change title bar name
(setq frame-title-format "GNU Emacs")

;; load theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'kanagawa t)

(use-package all-the-icons)

;; (use-package doom-themes
;;   :init
;; (load-theme 'doom-molokai 1))

(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(provide 'core-ui)

;;; core-ui.el ends here

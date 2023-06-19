;;; core-dashboard.el settings for dashboard

(require 'dashboard)
(dashboard-setup-startup-hook)
;; Or if you use use-package
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

;;(setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))

;; Set the title
(setq dashboard-banner-logo-title "Emacs is ready -- Happy Hacking.")

;; Set the banner
(setq dashboard-startup-banner "/home/chris/.emacs.d/themes/dum.txt")

;; Value can be
;; - nil to display no banner
;; - 'official which displays the official emacs logo
;; - 'logo which displays an alternative emacs logo
;; - 1, 2 or 3 which displays one of the text banners
;; - "path/to/your/image.gif", "path/to/your/image.png" or "path/to/your/text.txt" which displays whatever gif/image/text you would prefer
;; - a cons of '("path/to/your/image.png" . "path/to/your/text.txt")

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)


;; To disable shortcut "jump" indicators for each section, set
;; (setq dashboard-show-shortcuts nil)

(setq dashboard-icon-type 'all-the-icons) ;; use `all-the-icons' package

;; (setq dashboard-set-heading-icons t)
;; (setq dashboard-set-file-icons t)

;; (dashboard-modify-heading-icons '((recents . "file-text")
;;                                   (bookmarks . "book")))

;; (dashboard-modify-heading-icons '((recents . "nf-oct-file_text")
;;                                   (bookmarks . "nf-oct-book")))

;; (setq dashboard-set-navigator t)

;; ;; Format: "(icon title help action face prefix suffix)"
;; (setq dashboard-navigator-buttons
;;       `(;; line1
;;         ((,(all-the-icons-octicon "mark-github" :height 1.1 :v-adjust 0.0)
;;          "Homepage"
;;          "Browse homepage"
;;          (lambda (&rest _) (browse-url "homepage")))
;;         ("★" "Star" "Show stars" (lambda (&rest _) (show-stars)) warning)
;;         ("?" "" "?/h" #'show-help nil "<" ">"))
;;          ;; line 2
;;         ((,(all-the-icons-faicon "linkedin" :height 1.1 :v-adjust 0.0)
;;           "Linkedin"
;;           ""
;;           (lambda (&rest _) (browse-url "homepage")))
;;          ("⚑" nil "Show flags" (lambda (&rest _) (message "flag")) error))))

;;; startup init info
;; (setq dashboard-set-init-info t)
;; (setq dashboard-init-info "This is an init message!")


;;; footer setteings
;; (setq dashboard-set-footer nil)

;; (setq dashboard-footer-messages '("Dashboard is pretty cool!"))
;; (setq dashboard-footer-icon (all-the-icons-octicon "dashboard"
;;                                                    :height 1.1
;;                                                    :v-adjust -0.05
;;                                                    :face 'font-lock-keyword-face))

(provide 'core-dashboard)


;;; core-dashboard.el ends here

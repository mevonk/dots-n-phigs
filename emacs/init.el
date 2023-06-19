;; turn off toolbar, menubar and scrollbar early
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode t)
(global-display-line-numbers-mode t)

;; setup where emacs searches for .el file
(add-to-list 'load-path
	     (expand-file-name "core" user-emacs-directory))

(add-to-list 'load-path
	     (expand-file-name "modules" user-emacs-directory))

;; The default is 800 kilobytes.  Measured in bytes.
(setq gc-cons-threshold (* 50 1000 1000))

(defun efs/display-startup-time ()
  (message "Emacs loaded in %s with %d garbage collections."
           (format "%.2f seconds"
                   (float-time
                     (time-subtract after-init-time before-init-time)))
           gcs-done))

(add-hook 'emacs-startup-hook #'efs/display-startup-time)


;; load config
(require 'core)

;;; init.el ends here

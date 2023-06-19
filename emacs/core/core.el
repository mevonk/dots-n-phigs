;;; core.el --- Loads core components

;; load core .el files
(require 'core-package-setup)
(require 'core-backup-init)
(require 'core-ui)
(require 'core-settings)
(require 'core-completion)
(require 'core-utils)
(require 'core-funcs)
(require 'core-keys)
(require 'core-dashboard)

;; ;; load module .el files
(require 'init-rainbow)
(require 'init-lsp)
(require 'init-treemacs)
(require 'init-markdown)
(require 'init-org)
(require 'init-ivy)
(require 'init-dired)
(require 'init-term)

(provide 'core)

;;; core.el ends here

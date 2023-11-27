(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

(use-package straight
  :custom
  (straight-use-package-by-default t))

(use-package gruber-darker-theme)

(use-package which-key
  :straight t)

(use-package lsp-mode
  :ensure t )
(use-package ccls
  :ensure t )
(global-set-key [(C-f5)] 'compile)
(use-package magit
  :ensure t)
(use-package company
  :ensure t)
(use-package color-theme-sanityinc-tomorrow
  :ensure t)
(use-package sr-speedbar
  :ensure t)

(add-hook 'after-init-hook 'global-company-mode)
(global-set-key "\M-t" 'execute-extended-command)
(global-set-key "\M-x" 'sr-speedbar-toggle)
(add-to-list 'custom-theme-load-path "/home/keng.emacs.d/lensor-theme.el")
(menu-bar-mode 0)
(tool-bar-mode 0)
(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq auto-save-default nil)
(electric-pair-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(lensor))
 '(custom-safe-themes
   '("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "48c23734608053efeb16b360da637f085231d71366619a16e01d53f15608d7a0" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; stop backup files
(setq make-backup-files nil)

;; stop flashscreen
(setq inhibit-splash-screen t)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(global-display-line-numbers-mode 1)

(load-theme 'leuven)

(setq-default fill-column 80)
(global-display-fill-column-indicator-mode 1)

;; set "gnu" style indenting for c
(setq c-default-style "bsd"
      tab-width 8
      indent-tabs-mode t
      c-basic-offset 8)

(add-to-list 'auto-mode-alist '("\\.acod\\'" . adoc-mode))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Iosevka" :foundry "UKWN" :slant normal :weight regular :height 136 :width normal)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(package-selected-packages '(adoc-mode raku-mode sly)))

(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(load-theme 'nord t)
(set-face-attribute 'font-lock-comment-face nil
                    :foreground "#77818C") ; nord9
(set-face-attribute 'vertical-border nil
                    :foreground "#EBCB8B") ; nord13

(set-face-attribute 'default nil :height 120)
(set-default-font "Ubuntu Mono")

(setq default-directory "~/")

(menu-bar-mode -1)
(tool-bar-mode -1)
(setq-default indent-tabs-mode nil)
(setq tab-stop-list (number-sequence 4 120 4))
(setq column-number-mode t)
(setq electric-pair-mode t)
(electric-pair-mode)
(setq backup-directory-alist '(("." . "~/.saves")))

(define-key global-map (kbd "RET") 'newline-and-indent)
(add-hook 'f90-mode-hook (lambda ()
    (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)))

(defun my-c-mode-hook ()
  (setq c-basic-offset 4
        c-indent-level 4
        c-default-style "linux"))
(add-hook 'c-mode-common-hook 'my-c-mode-hook)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bb15d4b2d94eabac46f9a246d69cf75e1ffe3ebca5b310af375d180395f03493" default)))
 '(package-selected-packages (quote (evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

;; :q should kill the current buffer rather than quitting emacs entirely
(evil-ex-define-cmd "q" 'kill-this-buffer)
;; Need to type out :quit to close emacs
(evil-ex-define-cmd "quit" 'evil-quit)

(defun backward-kill-char-or-word ()
  (interactive)
  (cond 
   ((looking-back (rx (char word)) 1)
    (backward-kill-word 1))
   ((looking-back (rx (char blank)) 1)
    (delete-horizontal-space t))
   (t
    (backward-delete-char 1))))

(global-set-key (kbd "C-<backspace>") 'backward-kill-char-or-word)

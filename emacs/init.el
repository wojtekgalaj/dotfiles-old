(package-initialize)

(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)


(load-theme 'zenburn t)

;Init evil mode
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

;Stash backup files in separate directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))


; Change cursor shape when running emacs in the terminal
(unless (display-graphic-p)
      (use-package evil-terminal-cursor-changer
        :ensure t
        :init
        (setq evil-motion-state-cursor 'box)  ; █
        (setq evil-visual-state-cursor 'box)  ; █
        (setq evil-normal-state-cursor 'box)  ; █
        (setq evil-insert-state-cursor 'bar)  ; ⎸
        (setq evil-emacs-state-cursor  'hbar) ; _
        :config
        (etcc-on)
        ))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (zenburn-theme use-package evil-terminal-cursor-changer))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

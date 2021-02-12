
;Legger til Melpa repository (Det er der du finne bla elpy)  
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;;Bakgrunn/theme 
(load-theme 'misterioso)

; Setting font size 
(set-face-attribute 'default nil :height 140)

;;Fjerner scroll, menu og tool bars
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

;;Må stå for å kunne kopiere/lime utenifra emacs 
(setq select-enable-primary nil)
(setq select-enable-clipboard t) 

;??? Er dette riktig for å kjøre python 3? Må vi ha rpc ?? 
(setq python-shell-interpreter "python3") 

;;starter elpy by default 
(elpy-enable) 



;;Fixing a key binding bug in elpy
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
(define-key global-map (kbd "C-c o;") 'iedit-mode)



;; Enable line numbers 
(global-linum-mode t)


;; C

;; Start auto-complete with emacs.
;(require 'auto-complete)

;; Do default config for auto-complete.
;(require 'auto-complete-config)
;(ac-config-default)

;; Start yassnippet with emacs.
(require 'yasnippet)
(yas-global-mode 1)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (iedit elpy))))
(custom-set-faces)
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 
(put 'scroll-left 'disabled nil)

(setq make-backup-files nil) ; stop creating ~ files


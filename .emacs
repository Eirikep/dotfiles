;;(defun toggle-fullscreen ()
  ;; (interactive)
  ;; (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
  ;; 	    		 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  ;; (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
  ;; 	    		 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
;;)
;;(toggle-fullscreen)

(setq TeX-PDF-mode t)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection (quote (((output-dvi style-pstricks) "dvips and gv") (output-dvi "xdvi") (output-pdf "Evince") (output-html "xdg-open")))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

 (global-auto-revert-mode 1)

 (setq-default fill-column 80)
 (add-hook 'text-mode-hook 'turn-on-auto-fill)

(setq default-tab-width 4)

(global-set-key (kbd "C-x C-k") 'comment-region)
(global-set-key (kbd "C-x C-l") 'uncomment-region)
 
(setq py-python-command "/usr/bin/python")

(setq load-path (cons (expand-file-name "/home/eirikep/.emacs.d") load-path))
(global-font-lock-mode t)
;;(load "mcnpgen-mode")

(setq auto-mode-alist (cons '("\\.o" . text-mode) auto-mode-alist))

(global-set-key (kbd "C-c C-a") 'flyspell-auto-correct-word)

;; (add-to-list 'load-path "~/.emacs.d/")
;; (require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
;; (ac-config-default)

(add-hook 'LaTeX-mode-hook 'turn-on-flyspell)
(setq sgml-mode-hook
	  '(lambda () "Defauts for SGML mode."
		 (setq ispell-personal-dictionary "~/.ispell-dico-perso")
		 ))

(setq-default ispell-local-dictionary "british")

;; (setq load-path (cons (expand-file-name "/home/eirikep/.emacs.d/elpa/yasnippet-0.8.0") load-path))
;; (require 'yasnippet)
;; (yas-global-mode 1)

(global-set-key (kbd "C-c C-b") 'calc-embedded-update-formula)

;; (load "spotify")

(global-set-key (kbd "C-?") 'help-command)
(global-set-key (kbd "M-?") 'mark-paragraph)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-å") 'backward-kill-word)

(autoload 'calc-embedded-activate  "calc" "Activate =>'s in buffer" t)

(setq LaTeX-command-style '(("" "%(PDF)%(latex) -file-line-error %S%(PDFout)")))

; Set auto backups in specific folder
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "/media/data/.emacsAutoBackups"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups


; Include matlab-mode
;; (add-to-list 'load-path "~/.emacs.d/matlab-emacs/matlab-emacs")
;; (require 'matlab-load)



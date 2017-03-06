
(global-set-key [C-tab] 'other-window)

;; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;; tuareg (should have got this via opam)
(load "~/lib/tuareg/tuareg-site-file")

;; fstar-emacs variables
(setq-default fstar-executable "~/work/everest/FStar/bin/fstar.exe")
(setq fstar-subp-prover-args '("--include" "~/work/everest/FStar/ucontrib/CoreCrypto/fst" "--include" "~/work/everest/FStar/ucontrib/Platform/fst" "--include" "~/work/everest/mitls-fstar/src/tls"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit fstar-mode))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;(set-fontset-font t 'unicode (font-spec :name "YOUR USUAL EMACS FONT") nil 'append)
(set-fontset-font t 'unicode (font-spec :name "Symbola") nil 'append)
(set-fontset-font t (cons ?∀ ?∀) "Symbola" nil 'prepend)

;;; Code:
(setq inhibit-startup-screen t)

(global-set-key [C-tab] 'other-window)


;; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)


(setq-default fstar-executable "~/work/everest/FStar/bin/fstar.exe")
(setq-default fstar-smt-executable "~/work/everest/z3-4.5.0-x64-win/bin/z3.exe")

(global-flycheck-mode)

(add-to-list 'auto-mode-alist '("\\.fsi\\'" . fstar-mode))
(add-to-list 'auto-mode-alist '("\\.fsti\\'" . fstar-mode))

 ;(require 'fstar-mode "~/workspace/fstar-mode.el/fstar-mode.el")

;; tuareg (should have got this via opam)
(load "~/lib/tuareg/tuareg-site-file")

;; fstar-emacs variables

(setq fstar-subp-prover-args '("--include" "~/work/everest/FStar/ucontrib/CoreCrypto/fst" "--include" "~/work/everest/FStar/ucontrib/Platform/fst" "--include" "~/work/everest/mitls-fstar/src/tls" "--include" "../../../hacl-star/secure_api/LowCProvider/fst" "--include" "../../../kremlin/kremlib" "--include" "../../../hacl-star/specs" "--include" "../../../hacl-star/code/lib/kremlin" "--include" "../../../hacl-star/secure_api/test" "--include" "../../../hacl-star/secure_api/utils" "--include" "../../../hacl-star/secure_api/aead" "--include" "../../libs/ffi" "--include" "../../../FStar/ulib/hyperstack" "--include" "../../src/tls/ideal-flags"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (dash fstar-mode magit))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;(set-fontset-font t 'unicode (font-spec :name "YOUR USUAL EMACS FONT") nil 'append)
(set-fontset-font t 'unicode (font-spec :name "DejaVu Sans Mono") nil 'append)
(set-fontset-font t 'unicode (font-spec :name "Symbola") nil 'append)
(set-fontset-font t 'unicode (font-spec :name "FreeMono") nil 'append)
(set-fontset-font t 'unicode (font-spec :name "STIX") nil 'append)
(set-fontset-font t 'unicode (font-spec :name "Unifont") nil 'append)
(set-fontset-font t 'unicode (font-spec :name "Sego UI Symbol") nil 'append)
(set-fontset-font t 'unicode (font-spec :name "Arial Unicode") nil 'append)
(set-fontset-font t 'unicode (font-spec :name "Cambria Math") nil 'append)

;; tuareg (should have got this via opam)
(load "~/lib/tuareg/tuareg-site-file")

(provide '.emacs)
;;; .emacs ends here

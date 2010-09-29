; «FILENAME»
; «PROJECTNAME»
;
; Created by «FULLUSERNAME» on «DATE».
; Copyright «YEAR» «ORGANIZATIONNAME». All rights reserved.

(load "nu")      	;; essentials
(load "cocoa")		;; wrapped frameworks
  
; Will load all .nu files in your resource directory except this one and files beginning with "test_"
((NSBundle pathsForResourcesOfType:"nu" inDirectory:((NSBundle mainBundle) resourcePath)) each:(do (path)
  (set filename ((path stringByDeletingPathExtension) lastPathComponent))
  (unless (or (filename isEqualToString:"main") (filename hasPrefix:"test_")) (load filename) )
))

module Main where

import Lab1_1 (lab1)
import Lab1_2 (minim)
import Lab2_1 (findNextToLast, findNextToLasMaybe, myButLast)
import Lab2_2 (insert, insertAtN, insertZip)
import Lab3 (trObtaine, prObtaine, krugObtaine, trL, prL, krugL, tr1, pr1, krug1)

-- ghc -o main Main.hs
-- ./main

main :: IO ()
main = do
    print "Lab 1.1"
    print lab1
    print "=================="
    print "Lab 1.2"
    print $ minim [5, 6, 7]
    print "=================="
    print "=================="
    print "Lab 2.1"
    print $ findNextToLast [1, 2, 3, 4]
    print $ findNextToLasMaybe 1 [1..10]
    print $ myButLast [1..20]
    print "=================="
    print "Lab 2.2"
    print $ insert 2 'z' "1234590"
    print $ insertAtN 2 'z' "1234590"
    print $ insertZip 2 'z' "1234590"
    print "=================="
    print "Lab 3"
    print "Triangle"
    print $ trObtaine tr1
    print $ trL tr1 15
    print "Square"
    print $ prObtaine pr1
    print $ prL pr1 15
    print "Circle"
    print $ krugObtaine krug1
    print $ krugL krug1 15
    print "=================="

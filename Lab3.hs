
module Lab3 where

-- треугольник ------------------------------------------------------------------------

data Tr = ByTr        {
                          base1  :: (Int, Int),
                          base2  :: (Int, Int),
                          base3  :: (Int, Int),
                          font   :: String,
                          row    :: Int
                      } deriving (Show, Read, Eq, Ord)

tr1 :: Tr

tr1 = ByTr (20, 20) (17, 27) (17, 60) "Source Code Pro" 10


trR :: Tr -> Int -> (Int, Int, Int, Int, Int, Int, String, Int)

trR (ByTr (a, b) (c, d) (e, f) s r) step = (a + step, b, c + step, d, e + step, f, s, r)


trL :: Tr -> Int -> (Int, Int, Int, Int, Int, Int, String, Int)

trL (ByTr (a, b) (c, d) (e, f) s r) step = (a - step, b, c - step, d, e - step, f, s, r)


trObtaine :: Tr -> (Int, Int, Int, Int, Int, Int, String, Int)

trObtaine (ByTr (a, b) (c, d) (e, f) s r) = (a, b, c, d, e, f, s, r)

----------------------------------------------------------------------------------------



-- прямоугольник ---------------------------------------------------------------------

data Pr = ByPr          {
                          left   :: Int,
                          right  :: Int
                        } deriving (Show, Read, Eq, Ord)

pr1 :: Pr

pr1 = ByPr 12 30


prR :: Pr -> Int -> (Int, Int)
prR  (ByPr a b) step = (a + step, b)


prL :: Pr -> Int -> (Int, Int)
prL  (ByPr a b) step = (a - step, b)


prObtaine :: Pr -> (Int, Int)
prObtaine  (ByPr a b) = (a, b)

----------------------------------------------------------------------------------------------


-- круг ---------------------------------------------------------------------------------------


data Krug = ByKrug     {         
                          center :: (Int, Int),
                          radius :: Int
                        } deriving (Show, Read, Eq, Ord)



krug1 :: Krug

krug1 = ByKrug   (25, 12)  17

krug2 = ByKrug (14,7)  13

krug3 = ByKrug (16,4)  10


krugs :: [Krug]

krugs = [krug1, krug2, krug3]


krugR :: Krug  -> Int -> (Int, Int, Int)

krugR  (ByKrug (a, b) r)  step = (a + step, b, r)


krugL :: Krug  -> Int -> (Int, Int, Int)

krugL  (ByKrug (a, b) r)  step = (a - step, b, r)


krugObtaine :: Krug -> (Int, Int, Int)

krugObtaine  (ByKrug (a, b) r) = (a, b, r)

----------------------------------------------------------------------------------------

module Hanoi
    ( hanoiResolve
    ) where
  -- Create function and add the number of disks and the name of the three towers parameters
  hanoiResolve :: (Int, Char, Char, Char) -> [(Int, Char)] -- [(number_of_disk, destiny_tower)

  -- Create some spetial cases
  hanoiResolve (disks, a,b,c) | disks <= 0 = [] -- Whtn there is no numbers or a negative number of disks, return an empty list
                              | disks == 1 = [(disks, b)] -- If there is one disk, move it to an specified (b) tower
                              {-- 
                                Taking the case of a 2 disks tower, we move the disks 1,2,1 in that orden so that
                                the smalest disk is on top of the biggest one, we use the same logic on the rest
                                of numbers as if all the disks on top of the biggest one where number 1 and the 
                                  biggest one is number 2.
                              --} 
                              | even disks = hanoiResolve(disks-1, a,b,c) ++ [(disks, c)] ++ hanoiResolve((disks-1), b,c,a) --What to do when disks is an even number
                              | otherwise = hanoiResolve(disks-1, a,c,b) ++ [(disks, c)] ++ hanoiResolve((disks-1), b,a,c)  --What to do when disks is an odd number


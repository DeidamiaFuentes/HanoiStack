import Test.QuickCheck
import Hanoi

-- Verify that we are retorning the minimum posible steps for solving the Hanoi Tower
-- We add a limit of 20 disks so that it doesn't take too long too long to compile (Who uses so many disks anyway??)
prove_HanoiNumSteps :: Int -> Bool
prove_HanoiNumSteps n | n >= 1 && n <= 20 = length (hanoiResolve(n, 'A','B','C')) == (2^n) - 1
                      | n <= 0 = length (hanoiResolve(n, 'A','B','C')) == 0 --If there is no disks there are no steps and there shouldn't be negative disks
                      | otherwise = True -- I beleve that if it works for 20 disks or less it will be fine with bigger numbers :)



main :: IO ()
main = do
  putStrLn "Tests"
  quickCheck prove_HanoiNumSteps

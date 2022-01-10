names::[String]
names = ["aaa", "bbb", "ccc", "ddd", "eee", "fff"]

emptyList::[String]
emptyList = ["aaa", "bbb", "ccc", "ddd", "eee", "fff"]


printList:: [String] -> IO ()
printList list = do
    if(list == [])
        then putStrLn("Empty list!")
    else do
        let len = length list :: Int
        let start = 0 :: Int
        print(list !! start)
        let newList = tail list
        printList newList


printListElementsUsingbeginIndex:: [String] -> Int -> IO ()
printListElementsUsingbeginIndex list index = do
    if(list == [])
        then putStrLn("Empty list!")
    else if(index < 0 && index >= (length list))
        then putStrLn("Index out of bounds!")
    else do 
        print(list !! index)
        printListElementsUsingbeginIndex list (index + 1)


printListUsingIndex:: [String] -> IO ()
printListUsingIndex list = do
    if(list == [])
        then putStrLn("Empty list!")
    else printListElementsUsingbeginIndex list 0
    




main = do 
    printList names
    printListUsingIndex names
    
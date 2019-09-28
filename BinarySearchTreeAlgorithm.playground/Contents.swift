import UIKit


//
//class Node<Int> {
//    var value: Int
//    var leftChild: Node?
//    var rightChild: Node?
//
//    init(value: Int) {
//        self.value = value
//    }
//
//}


enum BinaryTree<T> {
    case empty
    indirect case node(BinaryTree, T, BinaryTree)
    
}

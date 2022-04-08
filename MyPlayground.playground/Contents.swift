import Foundation


func enumerateList(_A: [Int]){
    let a = [1, 4, -1, 3, 2]
    func viewDidLoard() {
        super.viewDidLoard()
        for (index, number) in a.enumerated() {
            print("\(index+1): \(number)")
        }
    }
   
}

import Cocoa

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1.count < s2.count
}

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

var reversedNames = names.sorted(by: backward)

print(reversedNames)


//
//  main.swift
//  211209
//
//  Created by JUNGMIN KIM on 2021/12/09.
//

import Foundation

print("Hello, World!")

if pageCount(n: 5, p: 3) == 1{
    print("pageCount test is success")
}else{
    print("pageCount test is fail")
}


if pageCount(n: 6, p: 2) == 1{
    print("pageCount test is success")
}else{
    print("pageCount test is fail")
}

 if pageCount(n: 6, p: 5) == 1{
    print("pageCount test is success")
}else{
    print("pageCount test is fail")
}

if pageCount(n: 5, p: 4) == 0{
    print("pageCount test is success")
}else{
    print("pageCount test is fail")
}

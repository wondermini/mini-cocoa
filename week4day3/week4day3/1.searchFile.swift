//
//  1.searchFile.swift
//  week4day3
//
//  Created by JUNGMIN KIM on 2021/11/24.
//

import Foundation

func searchFiles(at path: String) -> [String] {
    //fm은 fileManager 
    let fm = FileManager.default

    var files = [String]()
    do {
        files = try fm.contentsOfDirectory(atPath: path)

    } catch {
        // failed to read directory – bad permissions, perhaps?
    }
    return files
}

func isExist(filename: String, at path: String) -> Bool {
    let fileArr = searchFiles(at: path)
    return fileArr.contains(filename)
//    for tmpfilename in fileArr{
//        if tmpfilename == filename {
//            return true
//        }
//    }
//    return false
}

func sortFileByABC(at path: String) -> [String] {
    return searchFiles(at: path).sorted()
}

func multipleFiles(with filenames: [String], at path: String) -> [Bool] {
    let fileArr = searchFiles(at: path)
    var result = [Bool]()
    for filename in filenames {
        if fileArr.contains(filename) {
            result.append(true)
        } else {
            result.append(false)
        }
    }
    return result
}

func searchByExtension(exname: String, at path: String) -> [String] {
    var result = [String]()
    let fileArr = searchFiles(at: path)
    for filename in fileArr {
        if filename.hasSuffix(exname) {
            result.append(filename)
        }
    }
    return result
}

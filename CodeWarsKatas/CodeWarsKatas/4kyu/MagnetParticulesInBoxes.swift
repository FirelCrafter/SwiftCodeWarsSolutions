//
//  MagnetParticulesInBoxes.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 23.04.2022.
//

import Foundation

func doubles(_ maxk: Int, _ maxn: Int) -> Double {
   
  func v(_ k: Int, _ n: Int) -> Double {
    return 1.0 / (Double(k) * pow( Double(n+1) , Double(k*2) ))
  }
  
  func u(_ k:Int, _ maxn:Int) -> Double {
    return (1...maxn).map{v(k,$0)}.reduce(0,+)
  }
  
  func s(_ maxk: Int, _ maxn: Int) -> Double {
    return (1...maxk).map{u($0,maxn)}.reduce(0,+)
  }
  
  return s(maxk,maxn)
}

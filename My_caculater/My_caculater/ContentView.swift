//
//  ContentView.swift
//  My_caculater
//
//  Created by 황석현 on 2022/11/08.
//

import SwiftUI

struct ContentView: View {
    
    @State var totalNumber = "0"
    @State var numArray = Array<Int>()
    @State var numCount = 0
    
    
    
    // 버튼 만들기
    // 합계 출력하기
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack{
                Spacer()
                Text("\(totalNumber)")
                    .frame(width: 300, height: 100, alignment: .trailing)
                    .foregroundColor(Color.white)
                    .font(.system(size: 70))
                HStack{
                    Button {
                        totalNumber = "0"
                    } label: {
                        Text("AC")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color.gray)
                            .cornerRadius(90)
                            .font(.system(size: 35))
                            .foregroundColor(Color.black)
                    }

                    Button {
                        
                    } label: {
                        Text(Image(systemName: "plus.forwardslash.minus"))
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color.gray)
                            .cornerRadius(90)
                            .font(.system(size: 35))
                            .foregroundColor(Color.black)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("%")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color.gray)
                            .cornerRadius(90)
                            .font(.system(size: 35))
                            .foregroundColor(Color.black)
                    }

                    Button {
                        
                    } label: {
                        Text(Image(systemName: "divide"))
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color.orange)
                            .cornerRadius(90)
                            .font(.system(size: 35))
                            .foregroundColor(Color.white)
                    }

                }
                HStack{
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "7"
                        }else {
                            totalNumber += "7"
                        }
                    } label: {
                        Text("7")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color("Color.gray"))
                            .cornerRadius(90)
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                    }
                    
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "8"
                        }else {
                            totalNumber += "8"
                        }
                    } label: {
                        Text("8")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color("Color.gray"))
                            .cornerRadius(90)
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                    }
                        
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "9"
                        }else {
                            totalNumber += "9"
                        }
                    } label: {
                        Text("9")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color("Color.gray"))
                            .cornerRadius(90)
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                    }
                    
                    Button {
                        numCount += 1
                        numArray[numCount] = Int(totalNumber)!
                        totalNumber = "0"
                    } label: {
                        Text("X")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color.orange)
                            .cornerRadius(90)
                            .font(.system(size: 35))
                            .foregroundColor(Color.white)
                    }
                    
                }
                HStack{
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "4"
                        }else {
                            totalNumber += "4"
                        }
                    } label: {
                        Text("4")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color("Color.gray"))
                            .cornerRadius(90)
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                    }
                    
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "5"
                        }else {
                            totalNumber += "5"
                        }
                    } label: {
                        Text("5")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color("Color.gray"))
                            .cornerRadius(90)
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                    }
                    
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "6"
                        }else {
                            totalNumber += "6"
                        }
                    } label: {
                        Text("6")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color("Color.gray"))
                            .cornerRadius(90)
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                    }

                    Button {
                        
                    } label: {
                        Text("-")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color.orange)
                            .cornerRadius(90)
                            .font(.system(size: 60))
                            .foregroundColor(Color.white)
                    }
                    
                }
                HStack{
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "1"
                        }else {
                            totalNumber += "1"
                        }
                    } label: {
                        Text("1")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color("Color.gray"))
                            .cornerRadius(90)
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                    }
                    
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "2"
                        }else {
                            totalNumber += "2"
                        }
                    } label: {
                        Text("2")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color("Color.gray"))
                            .cornerRadius(90)
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                    }
                        
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "3"
                        }else {
                            totalNumber += "3"
                        }
                    } label: {
                        Text("3")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color("Color.gray"))
                            .cornerRadius(90)
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                    }
                    
                    Button {
                        numCount += 1
                        numArray[numCount] = Int(totalNumber)!
                        totalNumber = "0"
                    } label: {
                        Text("+")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color.orange)
                            .cornerRadius(90)
                            .font(.system(size: 60))
                            .foregroundColor(Color.white)
                    }
                    
                }
                HStack{
                    Button {
                        if totalNumber == "0" {
                            totalNumber = "0"
                        }else {
                            totalNumber += "0"
                        }
                    } label: {
                        Text("   0")
                            .frame(width: 180, height: 90, alignment: .leading)
                            .background(Color("Color.gray"))
                            .cornerRadius(90)
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                    }

                    Button {
                        
                    } label: {
                        Text(".")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color("Color.gray"))
                            .cornerRadius(90)
                            .font(.system(size: 60))
                            .foregroundColor(Color.white)
                    }
                        
                    Button {
                        
                    } label: {
                        Text("=")
                            .frame(width: 90, height: 90, alignment: .center)
                            .background(Color.orange)
                            .cornerRadius(90)
                            .font(.system(size: 60))
                            .foregroundColor(Color.white)
                    }
                }
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

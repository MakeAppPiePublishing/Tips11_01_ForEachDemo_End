//
//  CellView.swift
//  UsingClosures
//
//  Created by Steven Lipton on 5/5/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 11 (Q3 2020) video 01
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//This Week:  Learn more about the power of forEach in SwiftUI
//  For more code, go to http://bit.ly/AppPieGithub

import SwiftUI

struct CellView: View{
    var item:MenuItem
    var body: some View{
        VStack(alignment:.leading){
            HStack{
                Image("\(item.id)_100w")
                    .cornerRadius(10)
                    .padding(5)
                
                Spacer()
            }
            Text(item.name)
                .padding(.leading,5)
                .font(.headline)
            
            Text(item.description)
                .font(.caption)
                .padding(.bottom)
            Spacer()
        }
            
        .frame(height:300)
        .background(Color.green)
        .cornerRadius(15)
        .padding(3)
    }
    
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(item:MenuModel.menu[5])
    }
}

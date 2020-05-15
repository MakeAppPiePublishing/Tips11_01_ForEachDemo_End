//
//  RowView.swift
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

struct RowView: View{
    var item:MenuItem
    var body: some View{
        VStack{
            HStack{
                Image("\(item.id)_100w")
                    .cornerRadius(10)
                    .padding(5)
                Text(item.name)
                    .padding(.leading,5)
                    .font(.title)
                Spacer()
            }
            
            Text(item.description)
            Spacer()
        }
        .frame(height:200)
        .padding()
        .background(Color.green)
        .cornerRadius(25)
        
    }
    
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(item:MenuModel.menu[0])
    }
}

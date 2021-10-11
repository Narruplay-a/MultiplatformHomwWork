//
//  TitleScreen.swift
//  HomeWork
//
//  Created by Adel Khaziakhmetov on 21.06.2021.
//

import SwiftUI

struct TitleScreen: View {
    @EnvironmentObject var routing: Routing
    
    var body: some View {
        VStack {
            Text("Первый экран")
                .font(.largeTitle)
                .padding(.top, 20)
            
            Spacer()
            Button(action: {
                routing.shouldSelectDetail = true
                routing.selectedTab = 1
            }, label: {
                Text("Показать фото планеты")
                    .padding(20)
                    .foregroundColor(.white)
            }).background(Color.blue)
            .cornerRadius(8)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}


//
//  ContentView.swift
//  WatchOS WatchKit Extension
//
//  Created by Adel Khaziakhmetov on 18.10.2021.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject
    var model   : ListModel = .init()
    @EnvironmentObject
    var routing : Routing
    
    var body: some View {
        NavigationView {
            List(model.images, id: \.id) { image in
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Дата фотографии:")
                                .font(.system(size: 13).bold())
                            Text("Время фотографии:")
                                .font(.system(size: 13).bold())
                                .padding(.top, 5)
                        }

                        VStack(alignment: .leading) {
                            Text(image.date)
                                .font(.system(size: 15))
                            Text(image.time)
                                .font(.system(size: 15))
                                .padding(.top, 3)
                        }

                        Spacer()
                    }
                }.padding(5)
            }
            .navigationTitle("Изображения земли")
        }.onAppear {
            model.fetchData(routing.shouldSelectDetail)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

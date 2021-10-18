//
//  DetailModel.swift
//  HomeWork
//
//  Created by Adel Khaziakhmetov on 21.06.2021.
//

import Combine
import SwiftUI
import Foundation

final class DetailModel: ObservableObject {
    private let imageService = ImageService()
    private var cancellables: Set<AnyCancellable> = Set()
    private let imageLink: String
    
    @Published var id: String
    @Published var title: String

    init(with data: EarthImageEntity) {
        self.id = data.id
        title = data.caption
        imageLink = data.image
    }
    
    func fetchImage() {
        //TODO
    }
}

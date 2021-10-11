//
//  ImageService.swift
//  HomeWork
//
//  Created by Adel Khaziakhmetov on 21.06.2021.
//

import SwiftUI
import Foundation
import Combine

final class ImageService {
    private let urlSession = URLSession.shared
    private let jsonDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = ""
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        
        return decoder
    }()
    var subcriptions = Set<AnyCancellable>()
}

private extension ImageService {
    func generateUrl(for name: String) -> URL? {
        guard var urlComponents = URLComponents(string: "https://api.nasa.gov/EPIC/archive/natural/2019/05/30/png/\(name).png") else {
            return nil
        }
        
        let queryItems = [URLQueryItem(name: "api_key", value: QueryFixedParams.apiKey.rawValue)]
        urlComponents.queryItems = queryItems
        
        return urlComponents.url
    }
}

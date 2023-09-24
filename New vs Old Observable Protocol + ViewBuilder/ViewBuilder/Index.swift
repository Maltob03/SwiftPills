//
//  Index.swift
//  ViewBuilder
//
//  Created by Matteo Altobello on 23/09/23.
//

import Foundation

class IndexIndicator : ObservableObject {
    enum ViewType {
        case one
        case two
        case three
    }
    
    @Published var type : ViewType
    
    init(type: ViewType) {
        self.type = type
    }
}


@Observable class IndexIndicator2 {
    enum ViewType2 {
        case one
        case two
        case three
    }
    
    var type2 : ViewType2
    
    init(type2: ViewType2) {
        self.type2 = type2
    }
}

//
//  UserData.swift
//  StartingSwiftUI
//
//  Created by Adriano Ramos on 08/06/19.
//  Copyright © 2019 Adriano Ramos. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: BindableObject {
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
}


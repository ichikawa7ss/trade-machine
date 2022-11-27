//
//  File.swift
//  
//
//  Created by ichikawa on 2022/11/27.
//

import Foundation

public struct Team: Identifiable {
    public let id: Int
    public let name: String
    public let fullName: String
    public let shortName: String
    public let logoThumbnailUrl: String
    public let division: Division
}

extension Team: Hashable {
    public static func == (lhs: Team, rhs: Team) -> Bool {
        lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

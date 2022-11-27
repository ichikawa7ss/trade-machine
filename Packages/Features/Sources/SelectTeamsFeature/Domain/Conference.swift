//
//  Conference.swift
//  
//
//  Created by ichikawa on 2022/11/27.
//

import Foundation

enum Conference {
    case eastern
    case western
}

extension Conference {
    func teams() -> [Team] {
        switch self {
        case .eastern:
            return [
                .init(
                    id: 1,
                    name: "Celtics",
                    fullName: "Boston Celtics",
                    shortName: "BOS",
                    logoThumbnailUrl: "",
                    division: .atlantic
                ),
                .init(
                    id: 2,
                    name: "Nets",
                    fullName: "Brooklyn Nets",
                    shortName: "BKN",
                    logoThumbnailUrl: "",
                    division: .atlantic
                ),
                .init(
                    id: 3,
                    name: "Knicks",
                    fullName: "New York Knicks",
                    shortName: "NYK",
                    logoThumbnailUrl: "",
                    division: .atlantic
                ),
                .init(
                    id: 4,
                    name: "76ers",
                    fullName: "Philadelphia 76ers",
                    shortName: "PHI",
                    logoThumbnailUrl: "",
                    division: .atlantic
                ),
                .init(
                    id: 5,
                    name: "Raptors",
                    fullName: "Toronto Raptors",
                    shortName: "TOR",
                    logoThumbnailUrl: "",
                    division: .atlantic
                ),
                .init(
                    id: 6,
                    name: "Bulls",
                    fullName: "Chicago Bulls",
                    shortName: "CHI",
                    logoThumbnailUrl: "",
                    division: .central
                ),
                .init(
                    id: 7,
                    name: "Cavaliers",
                    fullName: "Cleveland Cavaliers",
                    shortName: "CLE",
                    logoThumbnailUrl: "",
                    division: .central
                ),
                .init(
                    id: 8,
                    name: "Pistons",
                    fullName: "Detroit Pistons",
                    shortName: "DET",
                    logoThumbnailUrl: "",
                    division: .central
                ),
                .init(
                    id: 9,
                    name: "Pacers",
                    fullName: "Indiana Pacers",
                    shortName: "IND",
                    logoThumbnailUrl: "",
                    division: .central
                ),
                .init(
                    id: 10,
                    name: "Bucks",
                    fullName: "Milwaukee Bucks",
                    shortName: "MIL",
                    logoThumbnailUrl: "",
                    division: .central
                ),
                .init(
                    id: 11,
                    name: "Hawks",
                    fullName: "Atlanta Hawks",
                    shortName: "ATL",
                    logoThumbnailUrl: "",
                    division: .southeast
                ),
                .init(
                    id: 12,
                    name: "Hornets",
                    fullName: "Charlotte Hornets",
                    shortName: "CHA",
                    logoThumbnailUrl: "",
                    division: .southeast
                ),
                .init(
                    id: 13,
                    name: "Heat",
                    fullName: "Miami Heat",
                    shortName: "MIA",
                    logoThumbnailUrl: "",
                    division: .southeast
                ),
                .init(
                    id: 14,
                    name: "Magic",
                    fullName: "Orlando Magic",
                    shortName: "ORL",
                    logoThumbnailUrl: "",
                    division: .southeast
                ),
                .init(
                    id: 15,
                    name: "Wizards",
                    fullName: "Washington Wizards",
                    shortName: "WAS",
                    logoThumbnailUrl: "",
                    division: .southeast
                ),
            ]
        case .western:
            return [
                .init(
                    id: 16,
                    name: "Nuggets",
                    fullName: "Denver Nuggets",
                    shortName: "DEN",
                    logoThumbnailUrl: "",
                    division: .northwest
                ),
                .init(
                    id: 17,
                    name: "Timberwolves",
                    fullName: "Minnesota Timberwolves",
                    shortName: "MIN",
                    logoThumbnailUrl: "",
                    division: .northwest
                ),
                .init(
                    id: 18,
                    name: "Thunder",
                    fullName: "Oklahoma City Thunder",
                    shortName: "OKC",
                    logoThumbnailUrl: "",
                    division: .northwest
                ),
                .init(
                    id: 19,
                    name: "Blazers",
                    fullName: "Portland Trail Blazers",
                    shortName: "POR",
                    logoThumbnailUrl: "",
                    division: .northwest
                ),
                .init(
                    id: 20,
                    name: "Jazz",
                    fullName: "Utah Jazz",
                    shortName: "UTA",
                    logoThumbnailUrl: "",
                    division: .northwest
                ),
                .init(
                    id: 21,
                    name: "Warriors",
                    fullName: "Golden State Warriors",
                    shortName: "GSW",
                    logoThumbnailUrl: "",
                    division: .pacific
                ),
                .init(
                    id: 22,
                    name: "Clippers",
                    fullName: "LA Clippers",
                    shortName: "LAC",
                    logoThumbnailUrl: "",
                    division: .pacific
                ),
                .init(
                    id: 23,
                    name: "Lakers",
                    fullName: "Los Angeles Lakers",
                    shortName: "LAL",
                    logoThumbnailUrl: "",
                    division: .pacific
                ),
                .init(
                    id: 24,
                    name: "Suns",
                    fullName: "Phoenix Suns",
                    shortName: "PHX",
                    logoThumbnailUrl: "",
                    division: .pacific
                ),
                .init(
                    id: 25,
                    name: "Kings",
                    fullName: "Sacramento Kings",
                    shortName: "SAC",
                    logoThumbnailUrl: "",
                    division: .pacific
                ),
                .init(
                    id: 26,
                    name: "Mavericks",
                    fullName: "Dallas Mavericks",
                    shortName: "DAL",
                    logoThumbnailUrl: "",
                    division: .southwest
                ),
                .init(
                    id: 27,
                    name: "Rockets",
                    fullName: "Houston Rockets",
                    shortName: "HOU",
                    logoThumbnailUrl: "",
                    division: .southwest
                ),
                .init(
                    id: 28,
                    name: "Grizzlies",
                    fullName: "Memphis Grizzlies",
                    shortName: "MEM",
                    logoThumbnailUrl: "",
                    division: .southwest
                ),
                .init(
                    id: 29,
                    name: "New Orleans Pelicans",
                    fullName: "New Orleans Pelicans",
                    shortName: "NOP",
                    logoThumbnailUrl: "",
                    division: .southwest
                ),
                .init(
                    id: 30,
                    name: "Spurs",
                    fullName: "San Antonio Spurs",
                    shortName: "SAS",
                    logoThumbnailUrl: "",
                    division: .southwest
                ),
            ]
        }
    }
}

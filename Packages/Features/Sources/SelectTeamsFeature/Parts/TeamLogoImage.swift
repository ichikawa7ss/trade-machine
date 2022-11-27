//
//  TeamLogoImage.swift
//  
//
//  Created by ichikawa on 2022/11/28.
//

import SwiftUI
import Representable

struct TeamLogoImage: View {

    let team: Team
    let width: CGFloat

    var body: some View {
        switch team.id {
        case 1:
            return Asset.logoBOS.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 2:
            return Asset.logoBKN.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 3:
            return Asset.logoNYK.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 4:
            return Asset.logoPHI.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 5:
            return Asset.logoTOR.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 6:
            return Asset.logoCHI.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 7:
            return Asset.logoCLE.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 8:
            return Asset.logoDET.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 9:
            return Asset.logoIND.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 10:
            return Asset.logoMIL.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 11:
            return Asset.logoATL.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 12:
            return Asset.logoCHA.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 13:
            return Asset.logoMIA.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 14:
            return Asset.logoORL.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 15:
            return Asset.logoWAS.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 16:
            return Asset.logoDEN.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 17:
            return Asset.logoMIN.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 18:
            return Asset.logoOKC.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 19:
            return Asset.logoPOR.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 20:
            return Asset.logoUTA.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 21:
            return Asset.logoGSW.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 22:
            return Asset.logoLAC.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 23:
            return Asset.logoLAL.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 24:
            return Asset.logoPHX.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 25:
            return Asset.logoSAC.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 26:
            return Asset.logoDAL.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 27:
            return Asset.logoHOU.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 28:
            return Asset.logoMEM.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 29:
            return Asset.logoNOP.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        case 30:
            return Asset.logoSAS.swiftUIImage
                .resizable()
                .scaledToFit()
                .frame(width: width)
        default:
            fatalError("存在しないチームID")
        }
    }
}

struct TeamLogoImage_Previews: PreviewProvider {
    static var previews: some View {
        TeamLogoImage(team: Conference.eastern.teams().first!, width: 100) // BOS
    }
}

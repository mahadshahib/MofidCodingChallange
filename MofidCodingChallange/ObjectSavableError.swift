//
//  ObjectSavableError.swift
//  MofidCodingChallange
//
//  Created by Mamad Shahib on 1/29/1401 AP.
//

import Foundation

enum ObjectSavableError : Error {
    case dataNotFound
    case DecodingError
    case EncodingError
}
extension ObjectSavableError: CustomStringConvertible {
    public var description: String {
        switch self {
        case .EncodingError:
            return "we have error in encoding process"
        case .DecodingError:
            return "we have error in decoding process"
        case .dataNotFound:
            return "data not found"
        }
    }
}

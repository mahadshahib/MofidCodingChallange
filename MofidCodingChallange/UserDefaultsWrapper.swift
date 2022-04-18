//
//  UserDefaultsWrapper.swift
//  MofidCodingChallange
//
//  Created by Mamad Shahib on 1/29/1401 AP.
//

import Foundation
// userdefualts wrapper to use across app
let defaults = UserDefaults.standard

extension UserDefaults: ObjectSavable {
    func setObject<Object>(_ object: Object, forKey: String) throws where Object: Encodable {
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(object)
            set(data, forKey: forKey)
        } catch {
            throw ObjectSavableError.EncodingError
        }
    }
    
    func getObject<Object>(forKey: String, castTo type: Object.Type) throws -> Object where Object: Decodable {
        guard let data = data(forKey: forKey) else { throw ObjectSavableError.dataNotFound }
        let decoder = JSONDecoder()
        do {
            let object = try decoder.decode(type, from: data)
            return object
        } catch {
            throw ObjectSavableError.DecodingError
        }
    }
}

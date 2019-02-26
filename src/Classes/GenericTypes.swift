//
//  GenericTypes.swift
//  SDOSSwiftExtensionSample
//
//  Created by Rafael Fernandez Alvarez on 22/02/2019.
//  Copyright © 2019 SDOS. All rights reserved.
//

import Foundation

/// Usado para las respuestas que no requieren devolver ningún objeto
public typealias EmptyResult = String

public extension EmptyResult {
    /// Objeto de respuesta vacío por defecto
    public static var empty: EmptyResult {
        return EmptyResult()
    }
}

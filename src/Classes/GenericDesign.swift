//
//  GenericTypes.swift
//  SDOSSwiftExtensionSample
//
//  Copyright © 2019 SDOS. All rights reserved.
//

import Foundation
import UIKit

/*
 Example implementation:
 
    extension UIView {
        enum style {
            typealias View = UIView
 
            ///Apply with the next line: UIView.style.style1.apply(to: <#T##view#>)
            static var style1: Style<View> {
                return Style<View> {
                    $0.backgroundColor = .blue
                }
            }
        }
    }
*/

/// Estructura base para la aplicación de estilos a los elementos visuales. Permite crear una clousure con la implementación del estílo a aplicar
public struct Style<View: UIView> {
    
    /// Estílo a aplicar
    fileprivate let style: (View) -> Void
    
    
    /// Inicializador con el clousure que contiene la lógica para aplicar el estilo
    ///
    /// - Parameter style: clousure que contiene la lógica para aplicar el estilo
    public init(_ style: @escaping (View) -> Void) {
        self.style = style
    }
    
    
    /// Método para aplicar el estílo anteriormente definido
    ///
    /// - Parameter view: vista que se cargará con el estilo
    public func apply(to view: View) {
        style(view)
    }
}

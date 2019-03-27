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

public protocol Stylable { }

/// Estructura base para la aplicación de estilos a los elementos visuales. Permite crear una closure con la implementación del estilo a aplicar
public struct Style<Element: Stylable> {
    
    /// Estilo a aplicar
    fileprivate let style: (Element) -> Void
    
    
    /// Inicializador con la closure que contiene la lógica para aplicar el estilo
    ///
    /// - Parameter style: closure que contiene la lógica para aplicar el estilo
    public init(_ style: @escaping (Element) -> Void) {
        self.style = style
    }
    
    
    /// Método para aplicar el estilo anteriormente definido
    ///
    /// - Parameter element: elemento que se cargará con el estilo
    public func apply(to element: Element) {
        style(element)
    }
}

extension UIView: Stylable { }
extension UIViewController: Stylable { }

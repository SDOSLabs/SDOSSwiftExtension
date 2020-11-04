- [SDOSSwiftExtension](#sdosswiftextension)
  - [Introducción](#introducción)
  - [Instalación](#instalación)
    - [Cocoapods](#cocoapods)
    - [Swift Package Manager](#swift-package-manager)
      - [**En el "Project"**](#en-el-project)
      - [**En un Package.swift**](#en-un-packageswift)
  - [Cómo se usa](#cómo-se-usa)
    - [Estílos](#estílos)
  - [Referencias](#referencias)

# SDOSSwiftExtension

- Enlace confluence: https://kc.sdos.es/x/DALLAQ
- Changelog: https://github.com/SDOSLabs/SDOSSwiftExtension/blob/master/CHANGELOG.md

## Introducción
SDOSSwiftExtension implementa nuevas funcionalidades con el fin de añadir más potencia al lenguaje. Cómo norma general se crearán extensiones de las clases existentes añadiendo nuevas funcionalidades pero también es posible que se creen nuevos componentes con el fin de facilitar el uso del lenguaje

## Instalación

### Cocoapods

Usaremos [CocoaPods](https://cocoapods.org). Hay que añadir la dependencia al `Podfile`:

```ruby
pod 'SDOSSwiftExtension', '~>1.0.2' 
```

### Swift Package Manager

A partir de Xcode 12 podemos incluir esta librería a través de Swift package Manager. Existen 2 formas de añadirla a un proyecto:

#### **En el "Project"**

Debemos abrir nuestro proyecto en Xcode y seleccionar el proyecto para abrir su configuración. Una vez aquí seleccionar la pestaña "Swift Packages" y añadir el siguiente repositorio

```
https://github.com/SDOSLabs/SDOSSwiftExtension.git
```

En el siguiente paso deberemos seleccionar la versión que queremos instalar. Recomentamos indicar "Up to Next Major" 1.1.0.

Por último deberemos indicar el o los targets donde se deberá incluir la librería

#### **En un Package.swift**

Incluir la dependencia en el bloque `dependencies`:

``` swift
dependencies: [
    .package(url: "https://github.com/SDOSLabs/SDOSSwiftExtension.git", .upToNextMajor(from: "1.1.0"))
]
```

Incluir la librería en el o los targets desados:

```js
.target(
    name: "YourDependency",
    dependencies: [
        "SDOSSwiftExtension"
    ]
)
```

## Cómo se usa

La librería en sí no es una implementación de una funcionalidad independiente, por lo que el desarrollador la usará en caso de necesitar alguno de los métodos de utilidad que ésta implemente.

### Estílos

Entre las funcionalidades que implementa contiene la aplicación de estílos para las vistas. Para aplicar estilos a una vista, está debe implementar el protocolo `Stylable`. Este protocolo marca los componentes que pueden ser usados por el struct `Style` que contiene la lógica para la aplicación de estilos. Por defecto las clases `UIView` y `UIViewController` (y todas sus subclases) implementan el protocolo y son candidatos a la aplicación de estilos.
```js
/// Extensión de UIView para poder aplicar estilos sobre él
extension UIView: Stylable { }

/// Extensión de UIViewController para poder aplicar estilos sobre él
extension UIViewController: Stylable { }
```

Para crear nuevos estílos hay que crear extensiones de la clase que se requiera y crear *variables estáticas* o *métodos estáticos* (este caso es si necesitamos pasarle parámetros) que devuelvan el tipo `Style<Class>`. Estás extensiones las crearemos en el fichero `Style+Design.swift`

Estílo para `UIView` que pone el *background color* en azul
``` js
extension UIView {
    enum style {
        typealias View = UIView
        
        ///Apply with the next line: UIView.style.main.apply(to: view)
        static var main: Style<View> {
            return Style<View> {
                $0.backgroundColor = .blue
            }
        }
    }
}   
```

Estílo para `UILabel` que cambia el color y el tamaño de la fuente
``` js
extension UILabel {
    enum style {
        typealias View = UILabel
        
        ///Apply with the next line: UILabel.style.title.apply(to: label)
        static var title: Style<View> {
            return Style<View> {
                $0.font = UIFont.boldSystemFont(ofSize: 25)
                $0.textColor = .white
            }
        }
    }
}
```

Para aplicar los estílos llamaremos a la variable o método estáticos donde tengamos la vista disponible:

``` js
func loadUI() {
    UIView.style.main.apply(to: self.viewBackgorund)
    UILabel.style.title.apply(to: self.lbTitle)
}
```

## Referencias
* https://github.com/SDOSLabs/SDOSSwiftExtension

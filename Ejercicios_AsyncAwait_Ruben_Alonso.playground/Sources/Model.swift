
import Foundation

/*
 Contexto para los ejercicios:
 Queremos recuperar distintas informaciones de una API de Wordpress que está situada en la URL:"https://acoding.academy/wp-json/wp/v2/posts"
 La URL proporcionada descarga el struct Posts. Detalles:
 - Un artículo puede tener varios autores.
 -En href de tipo URL tenemos la dirección el JSON correspondiente a - cada autor/es de cada artículo cuya definición está en Author.
 En href de wpfeaturedmedia está la dirección para bajar el JSON donde está la URL final de la imagen.
 Con esta información recuperada en la petición a esa URL, resuelve los  ejercicios.
 Hay que resolver todos los ejercicios usando Async-Await. Opcionalmente se puede intentar resolver alguno usando el patrón callback o Combine.
 */

public let urlJSON = URL(string: "https://acoding.academy/wp-json/wp/v2/posts")

public struct Posts:Codable {
    public let id:Int
    public struct Rendered:Codable {
        public let rendered:String
    }
    public let title:Rendered
    public let excerpt:Rendered
    public struct Author:Codable {
        
        public struct HREF:Codable {
            public let href:URL
        }
        
        public let author:[HREF]
        public let wpfeaturedmedia:[HREF]
        
        public enum CodingKeys:String, CodingKey {
            case author
            case wpfeaturedmedia = "wp:featuredmedia" }
    }
    public let _links:Author
}

public struct Author:Codable {
    public let id:Int
    public let name:String
    
    public struct AvatarURLS:Codable {
        public let _96:URL
        
        public enum CodingKeys:String, CodingKey {
            case _96 = "96" }
    }
    
    public let avatar_urls:AvatarURLS
}

public struct Media:Codable {
    public let id:Int
    public struct Rendered:Codable {
        public let rendered:String
    }
    public let guid:Rendered
}




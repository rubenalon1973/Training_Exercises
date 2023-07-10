import UIKit

/*
 Ejercicio 3:
 Crea una función que descargue de forma concurrente(simultáneo) las imágenes destacadas de todos los artículos y los devuelva en un solo array.
 serializado = síncróno
 */

func getArticleImages() async throws -> [UIImage] {
    guard let url = urlJSON else { throw NetworkError.urlNil }
    var arrayFeaturedImages = [URL]()
    var imagesStrigArrayURL = [URL]()
    
    do {
        let posts = try await getJSON(url: url, type: [Posts].self)
        posts.forEach { post in
            if let post = post._links.wpfeaturedmedia.first?.href {
                arrayFeaturedImages.append(post)
            }
        }
        
        for imagURL in arrayFeaturedImages {
            let stringIMg = try await getJSON(url: imagURL, type: Media.self).guid.rendered.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
            if let string = stringIMg,
               let urlString = URL(string: string) {//para poder utilizar la fx getImageSimple de sources
                imagesStrigArrayURL.append(urlString)
            }
        }
//        al ser concurrente, en paralelo, utilizamos la func withThrowingTaskGroup, of: la clase o tipo que coge, returning: lo mismo que dev la func principal
        return try await withThrowingTaskGroup(of: UIImage?.self, returning: [UIImage].self) { group in
            for urlIMG in imagesStrigArrayURL {
                group.addTask(priority: .high) {//añade las tareas al grupo
                    try await getImageSimple(url: urlIMG)//recuperar las imágenes
                }
            }
            
            var result = [UIImage]()
            
            for try await image in group.compactMap({ $0 }){//es async, ejecuta las tareas del group, compactMap si hay nil los quita, y deja de ser opc
                result.append(image)
                //hasta que no acaba con las 10 no hace el task
            }
//            cdo acaba el for, hace el return del result
            return result
        }
        
    } catch let error as NetworkError {
        print(error.description)
        throw error
    } catch {
        print(error)
        throw NetworkError.general(error)
    }
}

Task {
    try await getArticleImages()
}



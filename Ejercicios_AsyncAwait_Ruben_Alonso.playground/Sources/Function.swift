import UIKit

//MARK: Func genérica para hacer dif llamadas
public func getJSON<JSON:Codable>(url:URL, type:JSON.Type) async throws -> JSON {
    do {
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse else { throw NetworkError.noHTTP }
        if response.statusCode == 200 {
            do {
                return try JSONDecoder().decode(JSON.self, from: data)
            } catch {
                throw NetworkError.json(error)
            }
        } else {
            throw NetworkError.status(response.statusCode)
        }
    } catch let error as NetworkError { //captura nuestro custom error
        throw error
    } catch {
        throw NetworkError.general(error) //captura el error genérico(no custom)
    }
}
//siempre que tenemos custom error tendremos 2 catch


//MARK: Func para recuperar las image del ejercicio 3

public func getImageSimple(url:URL) async throws -> UIImage? {
    let (data, _) = try await URLSession.shared.data(from: url)
    return UIImage(data: data)
}

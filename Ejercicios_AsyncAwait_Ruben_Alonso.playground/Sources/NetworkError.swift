import Foundation

public enum NetworkError:Error {
    case general(Error)
    case status(Int)
    case json(Error)
    case dataNotValid
    case noHTTP
    case urlNil
    case unknown
    
    public var description:String {
        switch self {
        case .general(let error):
            return "Error general \(error.localizedDescription)"
        case .status(let statusCode):
            return "Error de status: \(statusCode)"
        case .json(let error):
            return "Error en el JSON: \(error)"
        case .dataNotValid:
            return "Dato no válido"
        case .noHTTP:
            return "No es conexión HTTP"
        case .unknown:
            return "Error desconocido"
        case .urlNil:
            return "la URL es NIL"
        }
    }
}

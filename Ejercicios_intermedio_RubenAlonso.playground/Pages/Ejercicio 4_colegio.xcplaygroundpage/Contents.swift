import Foundation

/*
 Ejercicio 4:
 Vamos a crear un colegio donde crearemos la estructura de datos
 necesarios usando structs en vez de clases.
 - Struct para los Profesores, con nombre y edad.
 - Struct para las Asignaturas, con nombre de asignatura y cursos donde
 se imparte.
 - Struct para los Alumnos, con nombre, edad y curso.
 - Struct para los Cursos con el tutor (profesor) y los alumnos.
 - Struct del Colegio con los distintos cursos del mismo.
 Queremos poder extraer listados y/o conteo de las asignaturas que
 imparte cada profesor, cuántos alumnos tiene cada uno y cuántos alumnos
 distintos hay en el colegio que al menos estén en una asignatura.
 Para probar que funciona crea una serie de datos de prueba.
*/


struct Teacher {
    let name: String
    let age: Int
}

struct Subject {
    let name: String
    let course: [Course]
}

struct Student {
    let name: String
    let age: Int
    let course: String
}

struct Course {
    let tutor: Teacher
    let students: [Student]
}

struct School {
    let courses: [Course]
}

let jose = Student(name: "Jose", age: 40, course: "Course1")
let juan = Student(name: "Juan", age: 41, course: "Course1")
let raul = Student(name: "Raúl", age: 30, course: "Course2")
let pedro = Student(name: "Pedro", age: 35, course: "Course2")
let ruben2 = Student(name: "Rubén Alonso", age: 50, course: "Course3")
let israel = Student(name: "Israel", age: 48, course: "Course3")

let albert = Teacher(name: "Alberto", age: 34)
let ruben1 = Teacher(name: "Rubén García", age: 34)
let julio = Teacher(name: "Julio", age: 49)

let course1 = Course(tutor: albert, students: [jose, juan])
let course2 = Course(tutor: ruben1, students: [raul, pedro])
let course3 = Course(tutor: julio, students: [ruben2, israel])

let language = Subject(name: "Language", course: [course1, course2, course3])
let maths = Subject(name: "Maths", course: [course1, course2, course3])
let history = Subject(name: "History", course: [course1, course2, course3])



let school = School(courses: [course1, course2, course3])

// Listado de asignaturas por profesor
print("List of subjects by teacher:")
for teacher in [albert, ruben1, julio] {
    var subjects = [String]()
    for subject in [language, maths, history] {
        for course in subject.course {
            if course.tutor.name == teacher.name {
                subjects.append(subject.name)
            }
        }
    }
    print("\(teacher.name) teaches the following subjects: \(subjects)")
}

// Conteo de alumnos por profesor
print("\nStudent count per teacher:")
for teacher in [albert, ruben1, julio] {
    var count = 0
    for subject in [language, maths, history] {
        for course in subject.course {
            if course.tutor.name == teacher.name {
                count += course.students.count
            }
        }
    }
    print("\(teacher.name) has \(count) students.")
}

//MARK: No entiendo el siguiente enunciado del ejercicio.
//TODO:  Conteo de alumnos distintos en el colegio que al menos están en una asignatura



















//struct Profesor: Equatable {
//    let nombre: String
//    let edad: Int
//}
//
//struct Alumno: Equatable {
//    let nombre: String
//    let edad: Int
//    var curso: Curso
//}
//
//struct Curso: Equatable {
//    let tutor: Profesor
//    var alumnos: [Alumno] = []
//}
//
//struct Asignatura {
//    let nombre: String
//    let cursos: [Curso]
//}
//
//struct Colegio {
//    let cursos: [Curso]
//}
//
//let ana = Profesor(nombre: "Ana", edad: 45)
//let pepe = Profesor(nombre: "Pepe", edad: 37)
//let montse = Profesor(nombre: "Montserrat", edad: 50)
//
//var primero = Curso(tutor: ana)
//var segundo = Curso(tutor: pepe)
//var tercero = Curso(tutor: montse)
//
//var maria = Alumno(nombre: "María", edad: 6, curso: primero)
//let pedrito = Alumno(nombre: "Pedro", edad: 6, curso: primero)
//let julita = Alumno(nombre: "Julia", edad: 7, curso: segundo)
//let juanito = Alumno(nombre: "Juan", edad: 7, curso: segundo)
//let laurita = Alumno(nombre: "Laura", edad: 8, curso: tercero)
//let pepito = Alumno(nombre: "Pepe", edad: 8, curso: tercero)
//
//primero.alumnos = [maria, pedrito]
//segundo.alumnos = [julita, juanito]
//tercero.alumnos = [laurita, pepito]
//
//let plastica = Asignatura(nombre: "Plástica", cursos: [primero])
//let lengua = Asignatura(nombre: "Lengua", cursos: [primero, segundo, tercero])
//let mates = Asignatura(nombre: "Matemáticas", cursos: [primero, segundo, tercero])
//let historia = Asignatura(nombre: "Historia", cursos: [segundo])
//let sociales = Asignatura(nombre: "Ciencias Sociales", cursos: [segundo, tercero])
//let economia = Asignatura(nombre: "Economía", cursos: [tercero])
//
//let asignaturas = [plastica, lengua, mates, historia, sociales, economia]
//
//let colegio = Colegio(cursos: [primero, segundo, tercero])
//
//// Queremos poder extraer listados y/o conteo de las asignaturas que
//// imparte cada profesor, cuántos alumnos tiene cada uno y cuántos alumnos
//// distintos hay en el colegio que al menos estén en una asignatura.
//// Para probar que funciona crea una serie de datos de prueba.
//
//var asignaturasPorTutor = [String: Int]()
//var alumnosProfesor = [String: Int]()
//var alumnosAsignaturas = [String: Int]()
//
//colegio.cursos.forEach { curso in
//    asignaturas.forEach { asignatura in
//        if asignatura.cursos.contains(where: { $0.tutor == curso.tutor }) {
//            asignaturasPorTutor[curso.tutor.nombre] = asignaturasPorTutor[curso.tutor.nombre, default: 0] + 1
//        }
//
//        curso.alumnos.forEach { alumno in
//            if asignatura.cursos.contains(where: { $0.alumnos.contains(where: { $0 == alumno }) }) {
//                alumnosAsignaturas[asignatura.nombre] = alumnosAsignaturas[asignatura.nombre, default: 0] + 1
//            }
//        }
//    }
//
//    alumnosProfesor[curso.tutor.nombre] = curso.alumnos.count
//}
//
//for (profesor, asignaturas) in asignaturasPorTutor where asignaturas > 0 {
//    print("El profesor \(profesor) tiene \(asignaturas) asignaturas")
//}
//print("-----------------------------------------------")
//for (asignatura, alumnos) in alumnosAsignaturas where alumnos > 0 {
//    print("La asignatura \(asignatura) tiene \(alumnos) alumnos")
//}
//print("-----------------------------------------------")
//for (profesor, alumnos) in alumnosProfesor where alumnos > 0 {
//    print("El profesor \(profesor) tiene \(alumnos) alumnos")
//}


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




















# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Parent.create(name: 'Leonardo Salazar', email: 'leorsalazarc@gmail.com', mobile: '0414-7672952')
Parent.create(name: 'Marianela Garcia', email: 'marianela@hotmail.com', mobile: '0424-82323677')
Parent.create(name: 'Rafael Marcano')

Student.create(name: 'Juan Salazar', college: 'Humboldt', year: '2009', parent_id: 1)
Student.create(name: 'Arnoldo Salazar', college: 'Humboldt', year: '2007', parent_id: 1)
Student.create(name: 'Ricardo Sanchez', college: 'Universidad Santa Maria', year: '2004', parent_id: 2)

Tutor.create(name: 'Sebastian Guevara', subject: 'Matemática')
Tutor.create(name: 'Maryví Camacho', subject: 'Matemática')
Tutor.create(name: 'Leonardo Salazar', subject: 'Matemática')

hora_inicio = Time.new(2021,11,26,14,30,00,"-04:00")
hora_fin = hora_inicio + 90*60 
Tutoring.create(date:'2021-11-26', start:hora_inicio, end:hora_fin, student_id:'2', tutor_id:'2')
Tutoring.create(date:'2021-11-26', start:hora_inicio, end:hora_fin, student_id:'3', tutor_id:'1')


Tutoring.create(date:'2021-11-25', start:Time.now.strftime("%I:%M %p"), end:'18:00', student_id:'1', tutor_id:'1')
Tutoring.create(date:'2021-11-25', start:Time.now.strftime("%I:%M %p"), end:'16:30', student_id:'3', tutor_id:'1')

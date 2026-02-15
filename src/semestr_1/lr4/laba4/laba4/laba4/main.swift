import Foundation

var patients: [PatientProtocol] = []

if let patient1 = Patient(firstName: "Илья", lastName: "Ульянов", middleName: "Антонович", age: 45, address: "ул. Ленина, 1", medicalCardNumber: 101, diagnoses: ["Грипп", "ОРВИ"]) {
    patients.append(patient1)
}
if let patient2 = Patient(firstName: "Антон", lastName: "Петров", middleName: "Иваночич", age: 30, address: "пр. Мира, 25", medicalCardNumber: 250, diagnoses: ["Ангина"]) {
    patients.append(patient2)
}
if let patient3 = Patient(firstName: "Анна", lastName: "Ильина", middleName: "Сергеевна", age: 28, address: "ул. Солнечная, 15", medicalCardNumber: 155, diagnoses: ["Грипп"]) {
    patients.append(patient3)
}

while true {
    print("""
    Меню:
    1. Добавить нового пациента
    2. Найти пациентов по диапазону номеров карт
    3. Найти пациентов по диагнозу
    4. Показать всех пациентов
    5. Выход

    Выберите действие:
    """, terminator: " ")

    if let choice = readLine() {
        switch choice {
        case "1":
            addNewPatient()
        case "2":
            findPatientsByCardRange()
        case "3":
            findPatientsByDiagnosis()
        case "4":
            print("\nСписок всех пациентов")
            if patients.isEmpty {
                print("Список пуст")
            } else {
                patients.forEach { $0.DisplayInfo() }
            }
        case "5":
            print("Завершение работы")
            exit(0)
        default:
            print("Неверный выбор. Введите число от 1 до 5")
        }
    }
}

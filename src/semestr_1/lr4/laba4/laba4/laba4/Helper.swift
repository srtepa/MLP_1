import Foundation

func readNonEmptyString(_ str: String) -> String {
    while true {
        print(str, terminator: " ")
        if let line = readLine(), !line.trimmingCharacters(in: .whitespaces).isEmpty {
            return line
        } else {
            print("Ошибка: Ввод не может быть пустым. Пожалуйста, попробуйте снова")
        }
    }
}

func readPositiveInt(_ str: String) -> Int {
    while true {
        print(str, terminator: " ")
        if let line = readLine(), let number = Int(line), number > 0 {
            return number
        } else {
            print("Ошибка: Необходимо ввести положительное число. Пожалуйста, попробуйте снова")
        }
    }
}

func addNewPatient() {
    print("\nДобавление нового пациента")
    let lastName = readNonEmptyString("Введите фамилию:")
    let firstName = readNonEmptyString("Введите имя:")
    let middleName = readNonEmptyString("Введите отчество:")
    let address = readNonEmptyString("Введите адрес:")
    let age = readPositiveInt("Введите возраст:")
    let medicalCardNumber = readPositiveInt("Введите номер мед. карты:")
    
    var diagnoses: [String] = []
    while true {
        let diagnosis = readNonEmptyString("Введите диагноз (или введите 'стоп' для завершения):")
        if diagnosis.lowercased() == "стоп" {
            break
        }
        diagnoses.append(diagnosis)
    }
    
    if let newPatient = Patient(firstName: firstName, lastName: lastName, middleName: middleName, age: age, address: address, medicalCardNumber: medicalCardNumber, diagnoses: diagnoses) {
        patients.append(newPatient)
        print("Пациент успешно добавлен!")
    } else {
        print("Не удалось добавить пациента")
    }
}

func findPatientsByCardRange() {
    print("\nПоиск по диапазону номеров мед. карт")
    let startRange = readPositiveInt("Введите начало диапазона:")
    let endRange = readPositiveInt("Введите конец диапазона:")
    
    guard startRange <= endRange else {
        print("Ошибка: Начало диапазона не может быть больше конца")
        return
    }
    
    let range = startRange...endRange
    
    let foundPatients = patients.filter { range.contains($0.medicalCardNumber) }
    
    if foundPatients.isEmpty {
        print("Пациенты в заданном диапазоне не найдены.")
    } else {
        print("\nНайденные пациенты:")
        foundPatients.forEach { $0.DisplayInfo() }
    }
}

func findPatientsByDiagnosis() {
    print("\nПоиск по диагнозу")
    let diagnosisToFind = readNonEmptyString("Введите диагноз для поиска:")
    
    let foundPatients = patients.filter { $0.diagnoses.contains { $0.lowercased() == diagnosisToFind.lowercased() } }
    
    if foundPatients.isEmpty {
        print("Пациенты с диагнозом '\(diagnosisToFind)' не найдены")
    } else {
        print("\nНайденные пациенты:")
        foundPatients.forEach { $0.DisplayInfo() }
    }
}

package laba1.zoo

import laba1.animals.AbstractAnimal
import laba1.animals.birds.Flamingo
import laba1.animals.birds.Ostrich
import laba1.animals.mammals.Elephant
import laba1.animals.mammals.Tiger

//паттерн "фабричное метод" для создания животных
object AnimalFactory {
    fun createAnimal(type: String): AbstractAnimal {
        return when (type.lowercase()) {
            "elephant" -> Elephant("Большое тело", "Толстые лапы", "Длинный хобот")
            "ostrich" -> Ostrich("Длинная шея", "Крылья")
            "tiger" -> Tiger("Мускулистое тело", "Мощные лапы")
            "flamingo" -> Flamingo("Изящное тело", "Длинные крылья")
            else -> throw IllegalArgumentException("Неизвестный тип животного: $type")
        }
    }
}
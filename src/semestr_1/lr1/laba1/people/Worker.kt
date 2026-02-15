package laba1.people

import laba1.animals.AbstractAnimal

//класс работника с первичным конструктором
class Worker {
    fun feedAnimal(animal: AbstractAnimal){
        println("Работник кормит животное ${animal.type}")
    }

    fun cleanCage(animal: AbstractAnimal) {
        println("Работник убирает клетку у животного ${animal.type}")
    }
}
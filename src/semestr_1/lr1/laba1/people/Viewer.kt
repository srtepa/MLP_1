package laba1.people

import laba1.animals.AbstractAnimal

class Viewer(val name: String) { //имя посетителю для лучшей идентификации
    fun viewAnimal(animal: AbstractAnimal) {
        println("$name смотрит на животное:")
        println(animal.getInfo())
    }
}
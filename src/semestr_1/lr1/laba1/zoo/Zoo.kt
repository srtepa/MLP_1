package laba1.zoo

import laba1.animals.AbstractAnimal
import laba1.people.Viewer
import kotlin.random.Random

//класс зоопарка с первичным конструктором
class Zoo {
    private var animals = ArrayList<AbstractAnimal>()

    fun acceptViewer(viewer: Viewer){//принятие посетителя с выдачей животного
        println("Зоопарк сейчас выдаст животное для просмотра зрителю...")
        val animal = giveAnimal()
        viewer.viewAnimal(animal)
    }

    private fun giveAnimal(): AbstractAnimal{
        if (animals.isEmpty()) {
            throw IllegalStateException("В зоопарке нет животных!")
        }

        var randomIndex = Random.nextInt(0, animals.size)

        return animals[randomIndex]
    }

    fun addAnimal(animal: AbstractAnimal) {//добавление животного в зоопарк
        animals.add(animal)
    }

    fun getAllAnimals(): List<AbstractAnimal> {
        return animals.toList()
    }
}
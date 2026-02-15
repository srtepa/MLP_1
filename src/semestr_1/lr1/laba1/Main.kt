package laba1

import laba1.animals.AbstractAnimal
import laba1.animals.mammals.Elephant
import laba1.animals.birds.Ostrich
import laba1.people.Viewer
import laba1.people.Worker
import laba1.zoo.AnimalFactory
import laba1.zoo.Zoo


//доп. задание: добавить try-catch-finally, любой паттерн проектирования и циклы
fun main() {
    val zoo = Zoo()

    val worker = Worker()

    //используем паттерн "фабричный метод " для создания животных
    val elephant = AnimalFactory.createAnimal("elephant") as Elephant
    val ostrich = AnimalFactory.createAnimal("ostrich") as Ostrich
    val tiger = AnimalFactory.createAnimal("tiger") as AbstractAnimal
    val flamingo = AnimalFactory.createAnimal("flamingo") as AbstractAnimal

    zoo.addAnimal(elephant)
    zoo.addAnimal(ostrich)
    zoo.addAnimal(tiger)
    zoo.addAnimal(flamingo)

    println("Просмотр животных посетителями:")

    for (i in 1..3) {
        val viewer = Viewer("Посетитель $i")
        println("\n${viewer.name} хочет посмотреть на животное...")
        try {
            zoo.acceptViewer(viewer)
        } catch (e: IllegalStateException) {
            println("Ошибка: ${e.message}")
        } finally {
            println("${viewer.name} закончил просмотр.")
        }
    }


    println("\nКормление животных:")
    val animalsToFeed = listOf(elephant, ostrich, tiger, flamingo)
    for (animal in animalsToFeed) {
        worker.feedAnimal(animal)
        println(animal.eat())
        println(animal.returnThanks())
        println()
    }


    println("Уборка клеток:")
    for (animal in zoo.getAllAnimals()) {
        worker.cleanCage(animal)
        println()
    }

    val emptyZoo = Zoo()
    println("\nПопытка посмотреть животных в пустом зоопарке:")
    val viewerEmpty = Viewer("Посетитель пустого зоопарка")
    try {
        emptyZoo.acceptViewer(viewerEmpty)
    } catch (e: IllegalStateException) {
        println("Ошибка: ${e.message}")
    } finally {
        println("${viewerEmpty.name} закончил просмотр в пустом зоопарке.")
    }
}
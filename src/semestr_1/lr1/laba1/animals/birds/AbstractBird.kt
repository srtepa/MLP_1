package laba1.animals.birds
import laba1.animals.AbstractAnimal

abstract class AbstractBird(
    body: String,
    protected var wings: String,
    type: String = "Неопределенное животное"
) : AbstractAnimal(body, type)
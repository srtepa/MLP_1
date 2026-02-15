package laba1.animals.mammals
import laba1.animals.AbstractAnimal

abstract class AbstractMammal(
    body: String,
    protected var paws: String,
    type: String = "Неопределенное животное"
) : AbstractAnimal(body, type)
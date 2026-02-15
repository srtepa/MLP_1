package laba1.animals.birds

class Flamingo(
    body: String,
    wings: String
) : AbstractBird(body, wings, "Фламинго") {

    override fun getInfo(): String {
        return """
            животное: фламинго
                тело: $body
                крылья: $wings
        """.trimIndent()
    }

    override fun eat(): String = "Фламинго ест"

    override fun returnThanks(): String {
        return "Фламинго благодарит работника!"
    }
}
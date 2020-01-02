import io.ktor.application.call
import io.ktor.application.install
import io.ktor.features.Compression
import io.ktor.features.gzip
import io.ktor.http.ContentType
import io.ktor.response.respondText
import io.ktor.routing.get
import io.ktor.routing.routing
import io.ktor.server.engine.embeddedServer
import io.ktor.server.netty.Netty

fun main() {
    var server = embeddedServer(Netty, 8081) {
        install(Compression) {
            gzip()
        }
        routing {
            get("/") {
                call.respondText("My Example Blog", ContentType.Text.Html)
            }
        }
    }
    server.start(wait = true)
}
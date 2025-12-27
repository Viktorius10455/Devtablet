window.addEventListener("message", function(event) {
    if (event.data.action === "open") {
        document.getElementById("tablet").style.display = "block"

        const d = event.data.data
        document.getElementById("player").innerHTML =
            `Naam: ${d.playerName}<br>ID: ${d.playerId}`

        document.getElementById("server").innerHTML =
            `Naam: ${d.serverName}<br>Spelers: ${d.players}`

        document.getElementById("resources").innerHTML =
            `Aantal resources: ${d.resources}`

        document.getElementById("ping").innerHTML =
            `Ping: ${d.ping} ms`
    }

    if (event.data.action === "close") {
        document.getElementById("tablet").style.display = "none"
    }
})

function closeTablet() {
    fetch(`https://${GetParentResourceName()}/close`, {
        method: "POST",
        body: "{}"
    })
}

import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtGraphicalEffects 1.0

Page {
    width: stackView.width
    height: stackView.height

    header: ToolBar {
        Material.elevation: 0
        Material.primary: Material.Pink
        contentHeight: toolButton.implicitHeight

        Label {
            text: qsTr("Sfide")
            anchors.centerIn: parent
        }
    }

    property var sfide: [
        ["SFIDA", "Accumula i tuoi primi token! Completa il primo acquisto con TLR", "0/1"],
        ["SFIDA", "Parla bene dei tuoi negozi preferiti! Lascia la tua prima recensione", "0/1"],
        ["SFIDA", "Allarghiamo la community! Invita il tuo primo amico", "0/1"],
        ["SFIDA", "Scopri i vantaggi di TeLoRaccomando, creati uno sconto per il tuo negozio preferito!", "0/1"],
        ["BADGE", "Completa tutte le sfide precedenti per sbloccare questo badge", "0/4"],
        ["SFIDA", "Siediti a tavola! Accumula 200 token nei ristoranti di Padova", "0/200"],
        ["SFIDA", "Torniamo a riavviare il centro storico. Accumula 100 token dopo le 22 nei bar del centro!", "0/100"],
        ["BADGE", "Completa tutte le sfide precedenti per sbloccare questo badge", "0/2"],
        ["SFIDA", "Invita due amici nel tuo negozio preferito", "0/2"],
        ["SFIDA", "La prossima camicia provala in negozio! Accumula 100 token in un negozio di abbigliamento uomo in centro", "0/100"],
        ["SFIDA", "Parla bene dei tuoi negozi preferiti! Lascia la tua prima recensione", "0/1"],
        ["BADGE", "Completa tutte le sfide precedenti per sbloccare questo badge", "0/3"]
    ]

    Popup {
        id: popup
        x: stackView.width/2 - popup.width/2
        y: 80
        width: stackView.width - 20
        height: 300
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        Text {
            id: titoloSfida
            width: popup.width - 20
            y: 30
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 20
        }

        Text {
            id: testoSfida
            width: popup.width - 60
            x: popup.width/2 - width/2
            y: 85
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            font.pixelSize: 16
        }

        Button {
            id: close
            x: popup.width/2 - width/2
            y: 200
            text: qsTr("Chiudi")
        }

        Text {
            id: state
            x: popup.width/2 - width/2
            y: 160
            font.bold: true
        }
    }

    Popup {
        id: popup1
        x: stackView.width/2 - popup.width/2
        y: 80
        width: stackView.width - 20
        height: 400
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        Image {
            id: qr
            x: parent.width/2 - width/2
            y: 20
            width: parent.width - 60
            height: width
            source: "qrc:/images/personalqr.png"
        }

        Button {
            id: close1
            x: popup.width/2 - width/2
            y: 310
            text: qsTr("Chiudi")
        }
    }

    ScrollView {
        id: frame
        clip: true
        anchors.fill: parent

        Flickable {
            contentHeight: 2300
            width: parent.width

            Text {
                x: swipeView.width/2 - width/2
                y: 15
                width: swipeView.width - 40
                text: qsTr("La strada per salvaguardare le piccole preziose realtà del centro di Padova è iniziata! Fai il primo passo insieme a noi.")
                wrapMode: Text.WordWrap
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            Image {
                x: (swipeView.width/2) - width/2
                y: 50
                width: 250
                height: 106
                source: "qrc:/images/ornamenti/1.png"
            }

            Rectangle {
                x: stackView.width/2 - width/2
                y: 160
                width: stackView.width - 60
                border.color: "#d9d9d9"
                height: 2
                border.width: 1
                Rectangle {
                    y: 1
                    width: parent.width
                    color: "#ffffff"
                    height: 1
                }
            }

            Text {
                x: swipeView.width/2 - width/2
                y: 180
                width: swipeView.width - 40
                text: qsTr("Secondo Confesercenti 2 clienti su 10 dopo l’emergenza legata alla pandemia di covid-19 prediligeranno gli acquisti online rispetto ai negozi fisici.<br><b>Invertiamo la tendenza, inizia ad usare TeLoRaccomando!</b>")
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            Image {
                x: (swipeView.width/3) - width/2
                y: 330
                width: 60
                height: 60
                source: "qrc:/images/sfide/sfida1.png"
                MouseArea {
                    id: sfida11
                    anchors.fill: parent
                }
            }

            Image {
                x: (swipeView.width*2/3) - width/2
                y: 330
                width: 60
                height: 60
                source: "qrc:/images/sfide/sfida2.png"
                MouseArea {
                    id: sfida12
                    anchors.fill: parent
                }
            }

            Image {
                x: (swipeView.width/3) - width/2
                y: 430
                width: 60
                height: 60
                source: "qrc:/images/sfide/sfida3.png"
                MouseArea {
                    id: sfida13
                    anchors.fill: parent
                }
            }

            Image {
                x: (swipeView.width*2/3) - width/2
                y: 430
                width: 60
                height: 60
                source: "qrc:/images/sfide/sfida4.png"
                MouseArea {
                    id: sfida14
                    anchors.fill: parent
                }
            }

            Text {
                x: swipeView.width/2 - width/2
                y: 530
                width: swipeView.width - 40
                text: qsTr("Completa le sfide e sblocca il badge <b>Uno di noi!</b>")
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            Image {
                x: (swipeView.width/2) - width/2
                y: 570
                width: 60
                height: 60
                source: "qrc:/images/sfide/badge1.png"
                MouseArea {
                    id: badge1
                    anchors.fill: parent
                }
            }

            Rectangle {
                x: stackView.width/2 - width/2
                y: 650
                width: stackView.width - 60
                border.color: "#d9d9d9"
                height: 2
                border.width: 1
                Rectangle {
                    y: 1
                    width: parent.width
                    color: "#ffffff"
                    height: 1
                }
            }

            Image {
                x: (swipeView.width/2) - width/2
                y: 665
                width: 190
                height: 140
                source: "qrc:/images/ornamenti/4.png"
            }

            Text {
                x: swipeView.width/2 - width/2
                y: 820
                width: swipeView.width - 40
                text: qsTr("Per gli esercizi della ristorazione il lockdown ha significato una riduzione del fatturato in 7 casi su 10 e un taglio del personale occupato nella metà delle imprese.<br><b>I bar e ristoranti di Padova hanno bisogno di te!</b>")
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            Image {
                x: (swipeView.width/3) - width/2
                y: 950
                width: 60
                height: 60
                source: "qrc:/images/sfide/sfida5.png"
                MouseArea {
                    id: sfida21
                    anchors.fill: parent
                }
            }

            Image {
                x: (swipeView.width*2/3) - width/2
                y: 950
                width: 60
                height: 60
                source: "qrc:/images/sfide/sfida6.png"
                MouseArea {
                    id: sfida22
                    anchors.fill: parent
                }
            }

            Text {
                x: swipeView.width/2 - width/2
                y: 1050
                width: swipeView.width - 40
                text: qsTr("Completa le sfide e sblocca il badge <b>Chef stellato</b>")
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            Image {
                x: (swipeView.width/2) - width/2
                y: 1100
                width: 60
                height: 60
                source: "qrc:/images/sfide/badge2.png"
                MouseArea {
                    id: badge2
                    anchors.fill: parent
                }
            }

            Rectangle {
                x: stackView.width/2 - width/2
                y: 1180
                width: stackView.width - 60
                border.color: "#d9d9d9"
                height: 2
                border.width: 1
                Rectangle {
                    y: 1
                    width: parent.width
                    color: "#ffffff"
                    height: 1
                }
            }

            Image {
                x: (swipeView.width/2) - width/2
                y: 1200
                width: 190
                height: 120
                source: "qrc:/images/ornamenti/3.png"
            }

            Text {
                x: swipeView.width/2 - width/2
                y: 1350
                width: swipeView.width - 40
                text: qsTr("Nel 2021 istat stima nei negozi di abbigliamento un calo delle vendite in volume del quasi 4%.<br><b>Affidati alle competenze dei nostri negozianti invece di prendere la taglia sbagliata su internet!</b>")
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            Image {
                x: (swipeView.width/3) - width/2
                y: 1450
                width: 60
                height: 60
                source: "qrc:/images/sfide/sfida7.png"
                MouseArea {
                    id: sfida31
                    anchors.fill: parent
                }
            }

            Image {
                x: (swipeView.width*2/3) - width/2
                y: 1450
                width: 60
                height: 60
                source: "qrc:/images/sfide/sfida8.png"
                MouseArea {
                    id: sfida32
                    anchors.fill: parent
                }
            }

            Image {
                x: (swipeView.width/2) - width/2
                y: 1550
                width: 60
                height: 60
                source: "qrc:/images/sfide/sfida9.png"
                MouseArea {
                    id: sfida33
                    anchors.fill: parent
                }
            }

            Text {
                x: swipeView.width/2 - width/2
                y: 1630
                width: swipeView.width - 40
                text: qsTr("Completa le sfide e sblocca il badge <b>Vestiti su misura</b>")
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            Image {
                x: (swipeView.width/2) - width/2
                y: 1680
                width: 60
                height: 60
                source: "qrc:/images/sfide/badge3.png"
                MouseArea {
                    id: badge3
                    anchors.fill: parent
                }
            }

            Rectangle {
                x: stackView.width/2 - width/2
                y: 1760
                width: stackView.width - 60
                border.color: "#d9d9d9"
                height: 2
                border.width: 1
                Rectangle {
                    y: 1
                    width: parent.width
                    color: "#ffffff"
                    height: 1
                }
            }

            Image {
                x: (swipeView.width/2) - width/2
                y: 1770
                width: 190
                height: 109
                source: "qrc:/images/ornamenti/2.png"
            }

            Text {
                x: swipeView.width/2 - width/2
                y: 1900
                width: swipeView.width - 40
                text: qsTr("<b>Complimenti! Hai sbloccato tutte le sfide! Il tuo nome è stato inserito nella Hall Of Fame di Padova di TeLoRaccomando.</b>")
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            Image {
                x: (swipeView.width/2) - width/2
                y: 1970
                width: 100
                height: 100
                source: "qrc:/images/sfide/win.png"
            }

            Text {
                x: swipeView.width/2 - width/2
                y: 2100
                width: swipeView.width - 40
                text: qsTr("Goditi il tuo buono da 100€ spendibile nei nostri negozi TeLoRaccomando!")
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            Button {
                id: buono
                x: (swipeView.width/2) - width/2
                y: 2170
                text: qsTr("Sblocca il buono da 100 euro!")
                Material.theme: Material.Dark
                Material.background: Material.Pink
            }

        }
    }

    Connections {
        target: sfida11
        onClicked: {
            titoloSfida.text = sfide[0][0]
            testoSfida.text = sfide[0][1]
            state.text = sfide[0][2]
            popup.open()
        }
    }

    Connections {
        target: sfida12
        onClicked: {
            titoloSfida.text = sfide[1][0]
            testoSfida.text = sfide[1][1]
            state.text = sfide[1][2]
            popup.open()
        }
    }

    Connections {
        target: sfida13
        onClicked: {
            titoloSfida.text = sfide[2][0]
            testoSfida.text = sfide[2][1]
            state.text = sfide[2][2]
            popup.open()
        }
    }

    Connections {
        target: sfida14
        onClicked: {
            titoloSfida.text = sfide[3][0]
            testoSfida.text = sfide[3][1]
            state.text = sfide[3][2]
            popup.open()
        }
    }

    Connections {
        target: badge1
        onClicked: {
            titoloSfida.text = sfide[4][0]
            testoSfida.text = sfide[4][1]
            state.text = sfide[4][2]
            popup.open()
        }
    }

    Connections {
        target: sfida21
        onClicked: {
            titoloSfida.text = sfide[5][0]
            testoSfida.text = sfide[5][1]
            state.text = sfide[5][2]
            popup.open()
        }
    }

    Connections {
        target: sfida22
        onClicked: {
            titoloSfida.text = sfide[6][0]
            testoSfida.text = sfide[6][1]
            state.text = sfide[6][2]
            popup.open()
        }
    }

    Connections {
        target: badge2
        onClicked: {
            titoloSfida.text = sfide[7][0]
            testoSfida.text = sfide[7][1]
            state.text = sfide[7][2]
            popup.open()
        }
    }

    Connections {
        target: sfida31
        onClicked: {
            titoloSfida.text = sfide[8][0]
            testoSfida.text = sfide[8][1]
            state.text = sfide[8][2]
            popup.open()
        }
    }

    Connections {
        target: sfida32
        onClicked: {
            titoloSfida.text = sfide[9][0]
            testoSfida.text = sfide[9][1]
            state.text = sfide[9][2]
            popup.open()
        }
    }

    Connections {
        target: sfida33
        onClicked: {
            titoloSfida.text = sfide[10][0]
            testoSfida.text = sfide[10][1]
            state.text = sfide[10][2]
            popup.open()
        }
    }

    Connections {
        target: badge3
        onClicked: {
            titoloSfida.text = sfide[11][0]
            testoSfida.text = sfide[11][1]
            state.text = sfide[11][2]
            popup.open()
        }
    }

    Connections {
        target: buono
        onClicked: popup1.open()
    }

    Connections {
        target: close1
        onClicked: popup1.close()
    }

    Connections {
        target: close
        onClicked: popup.close()
    }
}

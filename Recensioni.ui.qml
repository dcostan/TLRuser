import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: stackView.width
    height: stackView.height

    title: qsTr("La mia recensione")

    ItemDelegate {
        y: 20
        text: "<b>Non stai raccomando questo posto</b>"
        width: stackView.width
        enabled: false
    }

    Text {
        x: 30
        y: 80
        width: parent.width
        text: qsTr("LA TUA OPINIONE")
    }

    TextArea {
        id: write
        width: stackView.width - 50
        x: stackView.width/2 - width/2
        y: 110
        text: qsTr("")
        wrapMode: Label.WordWrap
        enabled: false
    }

    Text {
        x: 30
        y: 285
        width: parent.width
        text: qsTr("TOP 3 RACCOMANDATI")
    }

    TextField {
        id: racc1
        width: stackView.width - 50 - 12
        x: stackView.width/2 - width/2 + 12
        y: 310
        text: qsTr("")
        enabled: false

        Text {
            anchors {
                top: parent.top; bottom: parent.bottom
                left: parent.left; leftMargin: -25; bottomMargin: 7
            }
            verticalAlignment: Text.AlignVCenter
            color: parent.color
            text: qsTr("<b>1-</b>")
            font.pixelSize: 18
        }
    }


    TextField {
        id: racc2
        width: stackView.width - 50 - 12
        x: stackView.width/2 - width/2 + 12
        y: 360
        text: qsTr("")
        enabled: false

        Text {
            anchors {
                top: parent.top; bottom: parent.bottom
                left: parent.left; leftMargin: -25; bottomMargin: 7
            }
            verticalAlignment: Text.AlignVCenter
            color: parent.color
            text: qsTr("<b>2-</b>")
            font.pixelSize: 18
        }
    }


    TextField {
        id: racc3
        width: stackView.width - 50 - 12
        x: stackView.width/2 - width/2 + 12
        y: 410
        text: qsTr("")
        enabled: false

        Text {
            anchors {
                top: parent.top; bottom: parent.bottom
                left: parent.left; leftMargin: -25; bottomMargin: 7
            }
            verticalAlignment: Text.AlignVCenter
            color: parent.color
            text: qsTr("<b>3-</b>")
            font.pixelSize: 18
        }
    }

    Label {
        width: stackView.width
        y: stackView.height - 90
        text: qsTr("Vuoi cambiare la tua opinione su questo posto?")
        horizontalAlignment: Text.AlignHCenter
    }

    Button {
        id: confirm
        x: stackView.width/2 - width/2
        y: stackView.height - 60
        text: qsTr("Modifica")
    }


    Connections {
        target: confirm
        onClicked: {
            stackView.push("ModificaRecensione.ui.qml")
            new Promise(resolve => setTimeout(resolve, (2000)))
            write.text = "Reparto scarpe sempre superfornito per ogni tipo di esigenza. Commessi molto disponibili e preparati."
            racc1.text = "Reparto scarpe"
            racc2.text = "Collezione"
            racc3.text = "Calze sportive"
        }
    }
}

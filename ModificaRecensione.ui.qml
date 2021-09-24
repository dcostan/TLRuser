import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: stackView.width
    height: stackView.height

    title: qsTr("La mia recensione")

    CheckDelegate {
        y: 20
        text: "Raccomanderesti questo posto?"
        width: stackView.width
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
        placeholderText: qsTr("Scrivi qui...")
        wrapMode: Label.WordWrap
    }

    Text {
        x: 30
        y: 285
        width: parent.width
        text: qsTr("TOP 3 RACCOMANDATI")
    }

    TextField {
        width: stackView.width - 50 - 12
        x: stackView.width/2 - width/2 + 12
        y: 310
        placeholderText: qsTr("Prima raccomandazione...")

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
        width: stackView.width - 50 - 12
        x: stackView.width/2 - width/2 + 12
        y: 360
        placeholderText: qsTr("Seconda raccomandazione...")

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
        width: stackView.width - 50 - 12
        x: stackView.width/2 - width/2 + 12
        y: 410
        placeholderText: qsTr("Terza raccomandazione...")

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

    Button {
        id: confirm
        x: stackView.width/2 - width/2
        y: stackView.height - 60
        text: qsTr("Conferma")
    }


    Connections {
        target: confirm
        onClicked: stackView.pop()
    }
}

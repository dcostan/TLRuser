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
            text: qsTr("Il tuo codice")
            anchors.centerIn: parent
        }
    }

    Popup {
        id: popup
        x: stackView.width/2 - popup.width/2
        y: 80
        width: stackView.width - 20
        height: 400
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        Text {
            width: popup.width - 20
            y: 40
            text: qsTr("TRANSAZIONE EFFETTUATA")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 20
        }

        Image {
            x: popup.width/2 - width/2
            y: 55
            width: 150
            height: width
            source: "qrc:/images/spunta.png"
        }

        Text {
            width: popup.width - 20
            y: 210
            text: qsTr("Hai guadagnato <b>90</b> token!")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 16
        }

        Text {
            width: popup.width - 20
            y: 250
            text: qsTr("Ora il tuo saldo è salito a <b>145</b> token")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 16
        }

        Button {
            id: close
            x: popup.width/2 - width/2
            y: 300
            text: qsTr("Continua")
        }
    }

    Text {
        x: parent.width/2 - width/2
        y: 30
        width: parent.width
        text: qsTr("Saldo: <b>155 token</b>")
        wrapMode: Label.WordWrap
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 17
    }

    Rectangle {
        id: codeRect
        width: swipeView.width - 40
        height: 350
        radius: 7
        y: 70
        x: swipeView.width/2 - width/2

        Image {
            x: parent.width/2 - width/2
            y: 10
            width: 300
            height: width * 0.18
            source: "qrc:/images/TLRslogan.png"
        }

        Image {
            id: qr
            x: parent.width/2 - width/2
            y: 80
            width: 150
            height: width
            source: "qrc:/images/personalqr.png"
            MouseArea {
                id: transactionCompleted
                anchors.fill: parent
            }
        }

        Text {
            x: 30
            y: 260
            width: parent.width
            text: qsTr("Davide Costa")
            font.bold: true
            font.italic: true
            font.pixelSize: 18
        }

        Text {
            x: 30
            y: 290
            width: parent.width
            text: qsTr("1658796325874569")
            font.bold: true
            font.italic: true
            font.pixelSize: 25
        }

    }

    DropShadow {
        anchors.fill: codeRect
        cached: true
        horizontalOffset: 0
        verticalOffset: 0
        radius: 7
        samples: 16
        color: "#80000000"
        source: codeRect
    }

    Text {
        x: parent.width/2 - width/2
        y: codeRect.y + codeRect.height + 30
        width: parent.width - 60
        text: qsTr("Presenta questo codice al commerciante prima del pagamento per usufruire dei vantaggi di TeLoRaccomando!")
        wrapMode: Label.WordWrap
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }

    Connections {
        target: transactionCompleted
        onDoubleClicked: popup.open()
    }

    Connections {
        target: close
        onClicked: popup.close()
    }
}

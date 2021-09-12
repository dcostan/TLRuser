import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Page {
    width: stackView.width
    height: stackView.height

    header: Label {
        text: qsTr("IL TUO CODICE")
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 30
    }

    Text {
        x: parent.width/2 - width/2
        y: 10
        width: parent.width
        text: qsTr("Saldo token: 155")
        wrapMode: Label.WordWrap
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 17
    }

    Image {
        id: qr
        x: parent.width/2 - width/2
        y: 40
        width: parent.width - 60
        height: width
        source: "qrc:/images/personalqr.png"
    }

    Text {
        x: parent.width/2 - width/2
        y: qr.y + qr.height + 30
        width: parent.width - 40
        text: qsTr("Presenta questo codice al commerciante prima del pagamento per usufruire dei vantaggi di TeLoRaccomando!")
        wrapMode: Label.WordWrap
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 15
    }
}

import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: stackView.width
    height: stackView.height

    title: qsTr("Nuovo sconto")

    Text {
        y: 40
        width: parent.width
        text: qsTr("Status Argento")
        horizontalAlignment: Text.AlignHCenter
    }

    Image {
        x: stackView.width/2 - width/2
        y: 100
        width: 170
        height: 170
        source: "qrc:/images/discount.png"
    }

    Text {
        x: stackView.width/2 - width/2
        y: 350
        width: parent.width - 50
        text: qsTr("Vuoi convertire <b>100 token</b> per creare un nuovo sconto del <b>10% </b> presso <b>I tre scalini</b>?")
        wrapMode: Label.WordWrap
        horizontalAlignment: Text.AlignHCenter
    }

    Button {
        id: confirm
        x: stackView.width/2 - width/2
        y: 450
        text: qsTr("CREA SCONTO")
    }


    Connections {
        target: confirm
        onClicked: stackView.push("ScontoCreato.ui.qml")
    }
}

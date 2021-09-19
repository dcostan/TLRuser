import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: stackView.width
    height: stackView.height

    title: qsTr("Nuovo invito")

    Text {
        y: 40
        width: parent.width
        text: qsTr("Seleziona gli amici da invitare")
        horizontalAlignment: Text.AlignHCenter
    }

    ListView {
        width: stackView.width
        height: 300
        x: 0
        y: 100
        model: ["Filippo", "Davide", "Vanessa", "Gianmarco", "Filippo"]
        delegate: CheckDelegate {
            text: modelData
            width: stackView.width
        }
    }

    Button {
        id: confirm
        x: stackView.width/2 - width/2
        y: stackView.height - 100
        text: qsTr("Conferma inviti")
    }


    Connections {
        target: confirm
        onClicked: stackView.push("InvitoCreato.ui.qml")
    }
}

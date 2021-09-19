import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: stackView.width
    height: stackView.height

    title: qsTr("Nuovo sconto")

    Text {
        width: stackView.width
        y: 60
        text: qsTr("Hai invitato <b>2</b> amici!")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    Image {
        x: (stackView.width/2) - 100
        y: 120
        width: 200
        height: 200
        source: "qrc:/images/spunta.png"
    }

    Button {
        id: button
        x: stackView.width/2 - button.width/2
        y: 400
        text: qsTr("Torna a 'I miei inviti'")
    }

    Connections {
        target: button
        onClicked: {
            stackView.pop()
            stackView.pop()
        }
    }
}

import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: stackView.width
    height: stackView.height

    header: Label {
        text: qsTr("LA TUA CERCHIA")
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 30
    }

    Image {
        x: parent.width/2 - width/2
        y: 0
        width: 55
        height: 55
        source: "qrc:/images/tlr.png"
    }

    Image {
        x: (swipeView.width/6) - width/2
        y: 120
        width: 60
        height: 60
        source: "qrc:/images/shop1.png"
        MouseArea {
            id: shop1
            anchors.fill: parent
        }
    }

    Text {
        x: shop1.parent.x
        y: shop1.parent.y + shop1.height + 10
        width: shop1.width
        text: qsTr("JoyStore")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 13
    }

    Image {
        x: (swipeView.width/2) - width/2
        y: 120
        width: 60
        height: 60
        source: "qrc:/images/shop2.png"
        MouseArea {
            id: shop2
            anchors.fill: parent
        }
    }

    Text {
        x: shop2.parent.x
        y: shop2.parent.y + shop2.height + 10
        width: shop2.width
        text: qsTr("Sushi Attimi")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 13
    }

    Image {
        x: (swipeView.width*5/6) - width/2
        y: 120
        width: 60
        height: 60
        source: "qrc:/images/shop3.png"
        MouseArea {
            id: shop3
            anchors.fill: parent
        }
    }

    Text {
        x: shop3.parent.x
        y: shop3.parent.y + shop3.height + 10
        width: shop3.width
        text: qsTr("Unosso Bar")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 13
    }


    Connections {
        target: shop3
        onClicked: stackView.push("Unosso.ui.qml")
    }

}

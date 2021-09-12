import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Page {
    width: stackView.width
    height: stackView.height

    header: Label {
        text: qsTr("SFIDE")
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 30
    }

    ScrollView {
        id: frame
        clip: true
        anchors.fill: parent

        Flickable {
            contentHeight: 600
            width: parent.width

        }
    }
}

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

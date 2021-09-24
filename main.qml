import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2

ApplicationWindow {
    visible: true
    width: 380
    height: 640
    title: qsTr("TLR")

    header: ToolBar {
        Material.primary: Material.Pink
        contentHeight: toolButton.implicitHeight
        visible: stackView.depth > 1 && stackView.currentItem.title !== "Tutorial"

        ToolButton {
            id: toolButton
            text: "\u25C0"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                }
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }

    StackView {
        id: stackView
        initialItem: "Swipe.ui.qml"
        anchors.fill: parent
        property int tutorialIndex: 1
    }

    Component.onCompleted: stackView.push("Tutorial.ui.qml")
}

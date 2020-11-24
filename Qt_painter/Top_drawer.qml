import QtQuick 2.0
import QtQml.Models 2.2
import QtQml 2.2
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.0


Drawer{
    id: top_drawer
    width: window.width
    height: 100
    topMargin: 20
    dragMargin: 50
    edge: Qt.TopEdge

    FileDialog {
        id: openDialog
        title: "Please choose a file"
        folder: shortcuts.home
        onAccepted: {
            var ctx = document.getElementById('canvas1');

            if (ctx.getContext)
            {
            ctx = ctx.getContext('2d');
            var img1 = new Image();
            img1.onload = function () {
                    ctx.drawImage(img1, 0, 0);
                    ctx.fillStyle = "rgba(200, 0, 0, 0.5)";
                    ctx.fillRect(0, 0, 500, 500);

                };
                img1.source = openDialog.fileUrl;
            }
        }
    }
    FileDialog {
        id: saveDialog
        defaultSuffix: canvas.jpeg
        nameFilters: ["Image files (*.png *.jpeg *.jpg)", ]
        folder: shortcuts.home.writableLocation(shortcuts.home.DocumentsLocation)
        onAccepted:canvas.saveAs(file)
    }

    Dialog {
        id: settingDialog
        title: qsTr("Settings")
        Label {
        anchors.fill: parent
        text: qsTr(" Qt_PAINTER \n This Software is crafted by VIT students.\n Ashish Biswal\n Prasad Wakodkar\n Rujuta Kulkarni\n Saurabh Datey")
        horizontalAlignment: Text.AlignHCenter
        }
        standardButtons: StandardButton.Ok
    }


    Rectangle{
        width:540
        height: 110
        anchors.centerIn: parent
        Rectangle{
            width: 540
            height: 70
            anchors.centerIn: parent

            Row{
                spacing: 10
                anchors.centerIn: parent

                Rectangle{
                    id : rect1
                    height: 50
                    width: 50
                    color: "yellow"
                    Image {
                        id: home
                        source: "h2.png"
                        height: 65
                        width: 65
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        asynchronous: true
                    }
                    MultiPointTouchArea{
                        anchors.fill: parent
                        onPressed: menu1.open()
                        Menu{
                            id:menu1
                            MenuItem
                            {
                                text: "New"
                                onTriggered: canvas1.clear()

                            }
                            MenuItem
                            {
                                text: "Open"
                                onTriggered: openDialog.open()
                            }
                            MenuItem
                            {
                                text: "Save"
                                onTriggered: saveDialog.open();
                            }
                            MenuSeparator{}
                            MenuItem
                            {
                                text: "Exit"
                                onTriggered: Qt.quit()
                            }
                        }
                    }
                }
                Rectangle{
                    id : rect2
                    height: 50
                    width: 50
                    color: "black"
                    Image {
                        id: linewidth
                        source: "slider.png"
                        height: 65
                        width: 65
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        asynchronous: true
                    }
                }
                Rectangle{
                    id : rect3
                    height: 50
                    width: 50
                    color: "red"
                    Image {
                        id: brush
                        source: "pen.png"
                        height: 65
                        width: 65
                        anchors.centerIn: parent
                        fillMode: Image.PreserveAspectFit
                    }

                }
                Rectangle{
                    id : rect4
                    height: 50
                    width: 50
                    color: "green"
                    Image {
                        id: eraser
                        source: "Era.png"
                        height: 65
                        width: 65
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        asynchronous: true
                    }
                    MultiPointTouchArea{
                        anchors.fill: parent
                        onPressed: {
                            top_drawer.close()
                        }
                    }
                }
                Rectangle{
                    id : rect5
                    height: 50
                    width: 50
                    color: "blue"
                    Image{
                        id: setting
                        source: "setting.png"
                        height: 65
                        width: 65
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        asynchronous: true
                    }
                    MultiPointTouchArea{
                        anchors.fill: parent
                        onPressed: {
                            settingDialog.open()
                            top_drawer.close()
                        }
                    }
                }
            }
        }
    }
}

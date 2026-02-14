// Bar.qml
import Quickshell

Scope {
  // no more time object

  Variants {
    model: Quickshell.screens

    PanelWindow {
      required property var modelData
      screen: modelData

      anchors {
        top: true
        left: true
        right: true
      }

      implicitHeight: 30

      property color colBg: "#1a1b26"
      property color colFg: "#a9b1d6"
      property color colMuted: "#444b6a"
      property color colCyan: "#0db9d7"
      property color colBlue: "#7aa2f7"
      property color colYellow: "#e0af68"
      property string fontFamily: "JetBrainsMono Nerd Font"
      property int fontSize: 14

      ClockWidget {
        anchors.centerIn: parent

        // no more time binding
      }
    }
  }
}

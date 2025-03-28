$(document).ready(function () {
    const drawText = $("#draw-text");
    const drawTextContent = $("#draw-text-content");
    function ShowDrawText() {
        drawText.removeClass("draw-text-activated");
        drawText.css({ width: "auto" });
    }

    function HideDrawText() {
        drawText.css({ width: "0" });
    }

    function DrawText(data) {
        drawTextContent.html(data.text);
        ShowDrawText();
    }

    function ChangeText(data) {
        drawTextContent.html(data.text);
    }

    function KeyPressed() {
        drawText.addClass("draw-text-activated");
    }

    window.addEventListener("message", (event) => {
        const data = event.data;
        const action = data.action;
        const textData = data.data;
        switch (action) {
            case "DRAW_TEXT":
                return DrawText(textData);
            case "CHANGE_TEXT":
                return ChangeText(textData);
            case "HIDE_TEXT":
                return HideDrawText();
            case "KEY_PRESSED":
                return KeyPressed();
            default:
                return;
        }
    });
});

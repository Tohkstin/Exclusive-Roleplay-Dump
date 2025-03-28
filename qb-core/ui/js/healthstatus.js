$(document).ready(function () {
    window.addEventListener("message", (event) => {
        if (event.data.action === "ENABLE_RED_FLASH") {
            $("#status-indicator").show();
        } else if ("DISABLE_RED_FLASH" === event.data.action) {
            $("#status-indicator").hide();
        }
    });
});

const fadeTime = 250;
const announceOffset = 80;
$(document).ready(function () {
    window.addEventListener("message", function (event) {
        const e = event.data;
        const status = $(".status-notification");
        const statusTitle = status.find(".status-title");
        const statusText = status.find(".status-text");
        switch (e.action) {
            case "notification":
                const content = $(
                    '<div class="notification-bg" style="display: none;"><i class="icon fa-lg fa-solid" style="display: none;"></i><span></span></div>'
                );
                const icon = content.find("i");
                const container = $(".notify-wrap");

                switch (e.type) {
                    case 2:
                    case "error":
                        content.addClass("red");
                        icon.addClass("fa-circle-exclamation fa-beat-fade");
                        break;
                    case 3:
                    case "success":
                        content.addClass("green");
                        icon.addClass("fa-circle-check fa-beat");
                        break;
                    default:
                        icon.addClass("fa-circle-info fa-flip");
                }

                content.find("span").html(e.text);

                container.prepend(content);
                content.slideDown(fadeTime, () => {
                    icon.fadeIn();
                    setTimeout(() => {
                        icon.fadeOut(80);
                        content.slideUp(fadeTime, () => $(content).remove());
                    }, e.length);
                });
                break;
            case "announcement":
                const billboard = $(".billboard");
                const text = billboard.find(".billboard-text");

                text.html(e.text);
                const h = billboard.height() + announceOffset;
                billboard.css({ top: -h });

                billboard.animate(
                    { top: announceOffset },
                    fadeTime,
                    "swing",
                    () => {
                        setTimeout(() => {
                            billboard.animate({ top: -h }, fadeTime);
                        }, e.time);
                    }
                );
                break;
            case "showStatusNotification":
                statusTitle.html(e.title);
                statusText.html(e.text);
                status.css({ top: -status.height() });
                status.animate({ top: 0 }, fadeTime, "swing");
                break;
            case "hideStatusNotification":
                status.animate({ top: -status.height() }, fadeTime);
                break;
        }
    });
});

function testNotif(text, color, time) {
    const content = $(
        '<div class="notification-bg" style="display: none;"><i class="icon fa-lg fa-solid" style="display: none;"></i><span></span></div>'
    );
    const icon = content.find("i");
    const container = $(".notify-wrap");

    switch (color) {
        case 2:
        case "error":
            content.addClass("red");
            icon.addClass("fa-circle-exclamation fa-beat-fade");
            break;
        case 3:
        case "success":
            content.addClass("green");
            icon.addClass("fa-circle-check fa-beat");
            break;
        default:
            icon.addClass("fa-circle-info fa-flip");
    }

    content.find("span").html(text);

    container.prepend(content);
    content.slideDown(fadeTime, () => {
        icon.fadeIn();
        setTimeout(() => {
            icon.fadeOut(80);
            content.slideUp(fadeTime, () => $(content).remove());
        }, time);
    });
}

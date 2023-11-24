for (var n = 1; n <= 2; n++) {
    var spans = document.querySelectorAll("tr td:nth-child(" + n + ") > span");
    var maxw = 0;

    for (var i = 0; i < spans.length; i++) {
        if (spans[i].offsetWidth > maxw) {
            maxw = spans[i].offsetWidth;
        }
    }

    for (var i = 0; i < spans.length; i++) {
        spans[i].style.width = maxw + "px";
    }
}
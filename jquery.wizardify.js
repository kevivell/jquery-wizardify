var currentSlideNo;

jQuery.fn.wizardify = function () {
    var args = arguments[0] || {};
    var startSlide = args.startSlide;
    currentSlideNo = startSlide;
    var wizard = $(this);
    var nav = $(this).children(".nav");
    var controls = $(this).children(".controls");

    var next = controls.children(".next");
    var prev = controls.children(".prev");
    var finish = controls.children(".finish");

    var currentForm = $(".form-panel[data-slide='" + currentSlideNo + "']");
    var currentNav = $(".nav div[data-slide='" + currentSlideNo + "']");

    prev.click(function () {
        var slideTo = currentSlideNo - 1;
        slideWizardTo(slideTo, false, wizard);
    });

    next.click(function () {
        var slideTo = currentSlideNo + 1;
        slideWizardTo(slideTo, null, wizard);
        return true;
    });

    currentNav.addClass("active");
    currentForm.fadeIn();

    var totalWidth = 0;
    nav.children("div").each(function () {
        var width = $(this).width();
        totalWidth += width;
        $(this).on("click", function () {
            var slideNumber = $(this).data("slide");
            slideWizardTo(slideNumber, null, wizard);
        });
    });

    //nav.width(totalWidth + "px");
    controls.width($(this).width() + "px").fadeIn();

    prev.hide();
    if (finish != null)
        finish.hide();
};

function slideWizardTo(slideNumber, noValidation, wizard) {
    if ($(".form-panel:animated").length == 1)
        return false;

    var controls = wizard.children(".controls");
    var next = controls.children(".next");
    var prev = controls.children(".prev");
    var finish = controls.children(".finish");

    var maxSlides = wizard.children(".form-panel").length;
    var theSlide = wizard.children(".form-panel[data-slide='" + slideNumber + "']");
    var currentSlide = wizard.children(".form-panel[data-slide='" + currentSlideNo + "']");

    var onloadFunction = theSlide.data("onload");
    var beforeonloadFunction = theSlide.data("beforeonload");

    if (beforeonloadFunction != null) {
        if (!eval(beforeonloadFunction))
            return false;
    }

    if (onloadFunction != null) {
        eval(onloadFunction);
    }

    if (currentSlide != null) {
        var validationFunction = currentSlide.data("validatefunction");

        if (validationFunction != null && noValidation == null) {
            var flag = eval(validationFunction);

            if (!flag)
                return false;
        }
    } else
        return false;

    $(".nav div").removeClass("active");
    $(".nav div[data-slide='" + slideNumber + "']").addClass("active");

    currentSlide.fadeOut(200, function () {
        theSlide.fadeIn(200);
        currentSlideNo = slideNumber;

        if (currentSlideNo == 1) {
            if (finish != null)
                finish.hide();
            prev.fadeOut(function () {
                next.fadeIn();
            });
        } else if (currentSlideNo == maxSlides) {
            next.fadeOut(function () {
                prev.fadeIn(function () {
                    if (finish != null)
                        finish.fadeIn();
                });
            });
        } else {
            if (finish != null)
                finish.hide();
            next.fadeIn(function () {
                prev.fadeIn();
            });
        }
    });

    return true;
}
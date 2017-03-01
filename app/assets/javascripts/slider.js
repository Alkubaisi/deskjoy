$('#range').on("change", function() {
    $('.output').val("£" + this.value );
    }).trigger("change");

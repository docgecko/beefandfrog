$(document).ready(function () {
	$("#new_support").validate({
		// the errorPlacement has to take the table layout into account
	  errorElement: "label",
	  wrapper: "div class=\"error_message\" style=\"display: block;\"",
		errorPlacement: function(error, element) {
		// 	error.appendTo(element.prev());
			error.insertBefore(element);
		},
		// set the rules for the field names
		rules: {
			"support[email]": { required: true, email: true },
			"support[content]": { required: true },
		},
		// set messages to appear inline
		messages: {
			"support[email]": { required: "An email address is required", email: "Please enter a valid email address" },
			"support[content]": { required: "Please provide questions or comments" },
		}
	});
});
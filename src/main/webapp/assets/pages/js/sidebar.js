function init_sidebar(index, child) {
	switch (index) {
	case 0:
		$('#user-manager').addClass("start active open");
		if (child == 0) {
			$('#user-query').addClass("active");
		} else if (child == 1) {
			$('#user-add').addClass("active");
		}
		break;
	case 1:
		$('#dept-manager').addClass("start active open")
		if (child == 0) {
			$('#dept-query').addClass("active");
		} else if (child == 1) {
			$('#dept-add').addClass("active");
		}
		break;
	case 2:
		$('#job-manager').addClass("start active open")
		if (child == 0) {
			$('#job-query').addClass("active");
		} else if (child == 1) {
			$('#job-add').addClass("active");
		}
		break;
	case 3:
		$('#employee-manager').addClass("start active open")
		if (child == 0) {
			$('#employee-query').addClass("active");
		} else if (child == 1) {
			$('#employee-add').addClass("active");
		}
		break;
	}

}

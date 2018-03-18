Deface::Override.new(
	:virtual_path => 'spree/shared/_login',
	:name => 'override login',
	:replace=> "body",
	:text=> "<body><h1>loin<h1></body>",
	:disabled => false
)

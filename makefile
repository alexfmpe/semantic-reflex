docs: ghcjs
	chmod -R +w docs
	cp -r result/dist/js docs
	cp result/dist/semantic.min.css docs
	cp -r result/dist/themes docs
	cp -r example/resources/* docs

docs-nocc: ghcjs-nocc
	chmod -R +w docs
	cp -r result/dist/js docs
	cp result/dist/semantic.min.css docs
	cp -r result/dist/themes docs
	cp -r example/resources/* docs

ghcjs: semantic-reflex example
	nix-build --arg ghcjs true

ghcjs-nocc: semantic-reflex example
	nix-build --arg ghcjs true --arg runCC false

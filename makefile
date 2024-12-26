# temporary test makefile for testing that FBX exports fields corretly
cube_fbx_roundtrip:
	cargo run --release --bin fbx_roundtrip -- cube.fbx tmp.fbx
	cargo run --release --bin fbx_roundtrip -- tmp.fbx tmp2.fbx
	cargo run --release --bin fbx_graphviz -- cube.fbx tmp.fbx
	neato -Tpng cube.dot > cube.png
	neato -Tpng tmp.dot > tmp.png

parse_fbx_to_obj:
	cargo run --release -- cube.fbx tmp.obj

parse_fbx:
	cargo run --release -- Spartan_Sketchfab.fbx tmp.fbx

test_fbx:
	cargo run --release -- cube.fbx tmp.fbx
	cargo run --release -- tmp.fbx tmp2.fbx


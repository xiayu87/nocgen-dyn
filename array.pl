#!/usr/bin/perl

$array_size = 3;
$switch_num = $array_size * $array_size;

for ($src = 0; $src < $switch_num; $src++) {
		for ($dst = 0; $dst < $switch_num; $dst++) {
			$links[$src][$dst] = 0;
		}
	}
		for ($src = 0; $src < $switch_num; $src++) {
			$src_x = int($src % $array_size);
			$src_y = int($src / $array_size);
			print("src_x: $src_x - src_y: $src_y \n");
			# port0 (north)
			if ($src_y != 0) {
				$dst = $src - $array_size;
				$links[$src][$dst] = 1;
				$lport[$src][$dst] = 0;
				$rport[$src][$dst] = 2;
			}
			# port1 (east)
			if ($src_x != ($array_size - 1)) {
				$dst = $src + 1;
				$links[$src][$dst] = 1;
				$lport[$src][$dst] = 1;
				$rport[$src][$dst] = 3;
			}
			# port2 (south)
			if ($src_y != ($array_size - 1)) {
				$dst = $src + $array_size;
				$links[$src][$dst] = 1;
				$lport[$src][$dst] = 2;
				$rport[$src][$dst] = 0;
			}
			# port3 (west)
			if ($src_x != 0) {
				$dst = $src - 1;
				$links[$src][$dst] = 1;
				$lport[$src][$dst] = 3;
				$rport[$src][$dst] = 1;
			}


		}


for ($src = 0; $src < $switch_num; $src++) {
	for ($dst = 0; $dst < $switch_num; $dst++) {
		print("links: $links[$src][$dst] - src: $src - dst: $dst\n");
	}
	print("\n");
}
print("\n");
for ($src = 0; $src < $switch_num; $src++) {
	for ($dst = 0; $dst < $switch_num; $dst++) {
		print("lport: $lport[$src][$dst] - src: $src - dst: $dst\n");
	}
	print("\n");
}
print("\n");
for ($src = 0; $src < $switch_num; $src++) {
	for ($dst = 0; $dst < $switch_num; $dst++) {
		print("rport: $rport[$src][$dst] - src: $src - dst: $dst\n");
	}
	print("\n");
}
print("\n");
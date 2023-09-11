#!/usr/bin/perl

$array_size = 3;
$switch_num = $array_size * $array_size;

for ($src = 1; $src <= $switch_num; $src++) {
		for ($dst = 1; $dst <= $switch_num; $dst++) {
			$links[$src][$dst] = 0;
		}
	}
		for ($src = 1; $src <= $switch_num; $src++) {
			$src_x = int(($src-1) % $array_size);
			$src_y = int(($src-1) / $array_size);
			#print("src_x: $src_x - src_y: $src_y \n");
			# port1 (north)
			if ($src_y != 0) {
				$dst	= $src - $array_size;
				$links[$src][$dst] = 1;
				$lport[$src][$dst] = 1;
				$rport[$src][$dst] = 3;
			}
			# port2 (east)
			if ($src_x != ($array_size - 1)) {
				$dst	= $src + 1;
				$links[$src][$dst] = 1;
				$lport[$src][$dst] = 2;
				$rport[$src][$dst] = 4;
			}
			# port3 (south)
			if ($src_y != ($array_size - 1)) {
				$dst	= $src + $array_size;
				$links[$src][$dst] = 1;
				$lport[$src][$dst] = 3;
				$rport[$src][$dst] = 1;
			}
			# port4 (west)
			if ($src_x != 0) {
				$dst	= $src - 1;
				$links[$src][$dst] = 1;
				$lport[$src][$dst] = 4;
				$rport[$src][$dst] = 2;
			}


		}

=head
for ($src = 1; $src <= $switch_num; $src++) {
	$src_x = int(($src-1) % $array_size);
	$src_y = int(($src-1) / $array_size);
	print("src_x: $src_x - src_y: $src_y \n");
	for ($dst = 1; $dst <= $switch_num; $dst++) {
		if ($links[$src][$dst] == 1) {
			print("links: $links[$src][$dst] - src: $src - dst: $dst\n");
		}
	}
	print("\n");
}
=cut
=head
print("\n");
for ($src = 1; $src <= $switch_num; $src++) {
	$src_x = int(($src-1) % $array_size + 1);
	$src_y = int(($src-1) / $array_size + 1);
	print("src_x: $src_x - src_y: $src_y \n");
	for ($dst = 1; $dst <= $switch_num; $dst++) {
		print("lport: $lport[$src][$dst] - src: $src - dst: $dst\n");
	}
	print("\n");
}
=cut

print("\n");
for ($src = 1; $src <= $switch_num; $src++) {
	$src_x = int(($src-1) % $array_size);
	$src_y = int(($src-1) / $array_size);
	print("src_x: $src_x - src_y: $src_y \n");
	for ($dst = 1; $dst <= $switch_num; $dst++) {
		print("rport: $rport[$src][$dst] - src: $src - dst: $dst\n");
	}
	print("\n");
}
print("\n");
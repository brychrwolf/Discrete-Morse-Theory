XCFS_OUTPUTS =  processLowerStars_voxel_a.png \
				processLowerStars_voxel_b.png \
				processLowerStars_voxel_c.png \
				processLowerStars_voxel_d.png \
				processLowerStars_voxel_e.png \
				processLowerStars_voxel_f.png

all: $(XCFS_OUTPUTS)

%.png: %.xcf
	convert $< $@



clean: cleanXcfs

cleanXcfs:
	rm -f $(XCFS_OUTPUTS)


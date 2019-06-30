XCFS_OUTPUTS =  processLowerStars_voxel_a.png \
				processLowerStars_voxel_b.png \
				processLowerStars_voxel_c.png \
				processLowerStars_voxel_d.png \
				processLowerStars_voxel_e.png \
				processLowerStars_voxel_f.png \
				sandstone_abcd.png \
				sandstone_a.png \
				sandstone_b.png \
				sandstone_c.png \
				sandstone_d.png \
				foam.png \
				excursionSet_a.png \
				excursionSet_b.png \
				excursionSet_c.png \
				gaussianLandscape.png \
				criticalPoints.png \
				criticalPoints_minimum.png \
				criticalPoints_saddle.png \
				criticalPoints_maximum.png \
				criticalPoints_monkeySaddle.png \
				tithoniumChasma_Mars.png \
				LiDAR_laCueva_NewMexico.png \
				galeCrater_Mars.png

all: $(XCFS_OUTPUTS)

%.png: %.xcf
	convert $< -flatten $@



clean: cleanXcfs

cleanXcfs:
	rm -f $(XCFS_OUTPUTS)


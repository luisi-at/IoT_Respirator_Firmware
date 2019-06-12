	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"sps30.c"
	.text
.Ltext0:
	.section	.rodata.SPS_I2C_ADDRESS,"a",%progbits
	.type	SPS_I2C_ADDRESS, %object
	.size	SPS_I2C_ADDRESS, 1
SPS_I2C_ADDRESS:
	.byte	105
	.section	.text.sps_get_driver_version,"ax",%progbits
	.align	1
	.global	sps_get_driver_version
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sps_get_driver_version, %function
sps_get_driver_version:
.LFB0:
	.file 1 "/Users/alexluisi/Documents/Nordic_Semi/nRF5_SDK_15.0.0_a53641a/examples/my_projects/sps30/sps30.c"
	.loc 1 53 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 54 0
	ldr	r3, .L3
	ldr	r3, [r3]
	.loc 1 55 0
	mov	r0, r3
	bx	lr
.L4:
	.align	2
.L3:
	.word	SPS_DRV_VERSION_STR
.LFE0:
	.size	sps_get_driver_version, .-sps_get_driver_version
	.section	.text.sps30_probe,"ax",%progbits
	.align	1
	.global	sps30_probe
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sps30_probe, %function
sps30_probe:
.LFB1:
	.loc 1 57 0
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #36
.LCFI1:
	.loc 1 60 0
	bl	sensirion_i2c_init
	.loc 1 62 0
	mov	r3, sp
	mov	r0, r3
	bl	sps30_get_serial
	mov	r3, r0
	.loc 1 63 0
	mov	r0, r3
	add	sp, sp, #36
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.LFE1:
	.size	sps30_probe, .-sps30_probe
	.section	.text.sps30_get_serial,"ax",%progbits
	.align	1
	.global	sps30_get_serial
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sps30_get_serial, %function
sps30_get_serial:
.LFB2:
	.loc 1 65 0
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI3:
	sub	sp, sp, #60
.LCFI4:
	str	r0, [sp, #4]
	.loc 1 73 0
	movs	r0, #105
	add	r2, sp, #8
	movs	r3, #16
	movw	r1, #53299
	bl	sensirion_i2c_read_cmd
	mov	r3, r0
	strh	r3, [sp, #50]	@ movhi
	.loc 1 76 0
	ldrsh	r3, [sp, #50]
	cmp	r3, #0
	beq	.L8
	.loc 1 77 0
	ldrsh	r3, [sp, #50]
	b	.L15
.L8:
.LBB2:
	.loc 1 79 0
	add	r3, sp, #8
	str	r3, [sp, #44]
	movs	r3, #16
	strh	r3, [sp, #42]	@ movhi
	movs	r3, #0
	strh	r3, [sp, #52]	@ movhi
	b	.L10
.L11:
	.loc 1 79 0 is_stmt 0 discriminator 3
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #1
	ldr	r2, [sp, #44]
	add	r3, r3, r2
	ldrh	r3, [r3]
	lsls	r3, r3, #8
	sxth	r2, r3
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #1
	ldr	r1, [sp, #44]
	add	r3, r3, r1
	ldrh	r3, [r3]
	lsrs	r3, r3, #8
	uxth	r3, r3
	sxth	r3, r3
	orrs	r3, r3, r2
	sxth	r1, r3
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #1
	ldr	r2, [sp, #44]
	add	r3, r3, r2
	uxth	r2, r1
	strh	r2, [r3]	@ movhi
	ldrh	r3, [sp, #52]	@ movhi
	adds	r3, r3, #1
	strh	r3, [sp, #52]	@ movhi
.L10:
	.loc 1 79 0 discriminator 1
	ldrh	r2, [sp, #52]
	ldrh	r3, [sp, #42]
	cmp	r2, r3
	bcc	.L11
.LBE2:
	.loc 1 80 0 is_stmt 1
	movs	r3, #0
	strh	r3, [sp, #54]	@ movhi
	b	.L12
.L14:
	.loc 1 81 0
	ldrh	r2, [sp, #54]
	ldrh	r3, [sp, #54]
	ldr	r1, [sp, #4]
	add	r3, r3, r1
	add	r1, sp, #56
	add	r2, r2, r1
	ldrb	r2, [r2, #-48]	@ zero_extendqisi2
	strb	r2, [r3]
	.loc 1 82 0
	ldrh	r3, [sp, #54]
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L13
	.loc 1 83 0
	movs	r3, #0
	b	.L15
.L13:
	.loc 1 80 0 discriminator 2
	ldrh	r3, [sp, #54]	@ movhi
	adds	r3, r3, #1
	strh	r3, [sp, #54]	@ movhi
.L12:
	.loc 1 80 0 is_stmt 0 discriminator 1
	ldrh	r3, [sp, #54]
	cmp	r3, #31
	bls	.L14
	.loc 1 86 0 is_stmt 1
	movs	r3, #0
.L15:
	.loc 1 87 0 discriminator 1
	mov	r0, r3
	add	sp, sp, #60
.LCFI5:
	@ sp needed
	ldr	pc, [sp], #4
.LFE2:
	.size	sps30_get_serial, .-sps30_get_serial
	.section	.text.sps30_start_measurement,"ax",%progbits
	.align	1
	.global	sps30_start_measurement
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sps30_start_measurement, %function
sps30_start_measurement:
.LFB3:
	.loc 1 89 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI6:
	sub	sp, sp, #12
.LCFI7:
	.loc 1 90 0
	mov	r3, #768
	strh	r3, [sp, #6]	@ movhi
	.loc 1 92 0
	movs	r0, #105
	add	r2, sp, #6
	movs	r3, #1
	movs	r1, #16
	bl	sensirion_i2c_write_cmd_with_args
	mov	r3, r0
	.loc 1 96 0
	mov	r0, r3
	add	sp, sp, #12
.LCFI8:
	@ sp needed
	ldr	pc, [sp], #4
.LFE3:
	.size	sps30_start_measurement, .-sps30_start_measurement
	.section	.text.sps30_stop_measurement,"ax",%progbits
	.align	1
	.global	sps30_stop_measurement
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sps30_stop_measurement, %function
sps30_stop_measurement:
.LFB4:
	.loc 1 98 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI9:
	.loc 1 99 0
	movs	r3, #105
	mov	r1, #260
	mov	r0, r3
	bl	sensirion_i2c_write_cmd
	mov	r3, r0
	.loc 1 100 0
	mov	r0, r3
	pop	{r3, pc}
.LFE4:
	.size	sps30_stop_measurement, .-sps30_stop_measurement
	.section	.text.sps30_read_data_ready,"ax",%progbits
	.align	1
	.global	sps30_read_data_ready
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sps30_read_data_ready, %function
sps30_read_data_ready:
.LFB5:
	.loc 1 102 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI10:
	sub	sp, sp, #12
.LCFI11:
	str	r0, [sp, #4]
	.loc 1 103 0
	movs	r0, #105
	movs	r3, #1
	ldr	r2, [sp, #4]
	movw	r1, #514
	bl	sensirion_i2c_read_cmd
	mov	r3, r0
	.loc 1 105 0
	mov	r0, r3
	add	sp, sp, #12
.LCFI12:
	@ sp needed
	ldr	pc, [sp], #4
.LFE5:
	.size	sps30_read_data_ready, .-sps30_read_data_ready
	.section	.text.sps30_read_measurement,"ax",%progbits
	.align	1
	.global	sps30_read_measurement
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sps30_read_measurement, %function
sps30_read_measurement:
.LFB6:
	.loc 1 107 0
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI13:
	sub	sp, sp, #68
.LCFI14:
	str	r0, [sp, #4]
	.loc 1 116 0
	movs	r0, #105
	add	r2, sp, #8
	movs	r3, #20
	mov	r1, #768
	bl	sensirion_i2c_read_cmd
	mov	r3, r0
	strh	r3, [sp, #60]	@ movhi
	.loc 1 118 0
	ldrsh	r3, [sp, #60]
	cmp	r3, #0
	beq	.L23
	.loc 1 119 0
	ldrsh	r3, [sp, #60]
	b	.L27
.L23:
.LBB3:
	.loc 1 121 0
	add	r3, sp, #8
	str	r3, [sp, #56]
	movs	r3, #20
	strh	r3, [sp, #54]	@ movhi
	movs	r3, #0
	strh	r3, [sp, #62]	@ movhi
	b	.L25
.L26:
	.loc 1 121 0 is_stmt 0 discriminator 3
	ldrh	r3, [sp, #62]
	lsls	r3, r3, #1
	ldr	r2, [sp, #56]
	add	r3, r3, r2
	ldrh	r3, [r3]
	lsls	r3, r3, #8
	sxth	r2, r3
	ldrh	r3, [sp, #62]
	lsls	r3, r3, #1
	ldr	r1, [sp, #56]
	add	r3, r3, r1
	ldrh	r3, [r3]
	lsrs	r3, r3, #8
	uxth	r3, r3
	sxth	r3, r3
	orrs	r3, r3, r2
	sxth	r1, r3
	ldrh	r3, [sp, #62]
	lsls	r3, r3, #1
	ldr	r2, [sp, #56]
	add	r3, r3, r2
	uxth	r2, r1
	strh	r2, [r3]	@ movhi
	ldrh	r3, [sp, #62]	@ movhi
	adds	r3, r3, #1
	strh	r3, [sp, #62]	@ movhi
.L25:
	.loc 1 121 0 discriminator 1
	ldrh	r2, [sp, #62]
	ldrh	r3, [sp, #54]
	cmp	r2, r3
	bcc	.L26
.LBE3:
	.loc 1 123 0 is_stmt 1
	movs	r3, #0
	strh	r3, [sp, #52]	@ movhi
	.loc 1 124 0
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r2, sp, #64
	add	r3, r3, r2
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsls	r2, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r2
	lsls	r2, r3, #16
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsls	r1, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r0, sp, #64
	add	r3, r3, r0
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r1
	uxth	r3, r3
	orrs	r3, r3, r2
	str	r3, [sp, #48]
	.loc 1 125 0
	ldr	r2, [sp, #48]	@ float
	ldr	r3, [sp, #4]
	str	r2, [r3]	@ float
	.loc 1 126 0
	ldrh	r3, [sp, #52]	@ movhi
	adds	r3, r3, #1
	strh	r3, [sp, #52]	@ movhi
	.loc 1 127 0
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r2, sp, #64
	add	r3, r3, r2
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsls	r2, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r2
	lsls	r2, r3, #16
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsls	r1, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r0, sp, #64
	add	r3, r3, r0
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r1
	uxth	r3, r3
	orrs	r3, r3, r2
	str	r3, [sp, #48]
	.loc 1 128 0
	ldr	r2, [sp, #48]	@ float
	ldr	r3, [sp, #4]
	str	r2, [r3, #4]	@ float
	.loc 1 129 0
	ldrh	r3, [sp, #52]	@ movhi
	adds	r3, r3, #1
	strh	r3, [sp, #52]	@ movhi
	.loc 1 130 0
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r2, sp, #64
	add	r3, r3, r2
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsls	r2, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r2
	lsls	r2, r3, #16
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsls	r1, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r0, sp, #64
	add	r3, r3, r0
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r1
	uxth	r3, r3
	orrs	r3, r3, r2
	str	r3, [sp, #48]
	.loc 1 131 0
	ldr	r2, [sp, #48]	@ float
	ldr	r3, [sp, #4]
	str	r2, [r3, #8]	@ float
	.loc 1 132 0
	ldrh	r3, [sp, #52]	@ movhi
	adds	r3, r3, #1
	strh	r3, [sp, #52]	@ movhi
	.loc 1 133 0
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r2, sp, #64
	add	r3, r3, r2
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsls	r2, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r2
	lsls	r2, r3, #16
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsls	r1, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r0, sp, #64
	add	r3, r3, r0
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r1
	uxth	r3, r3
	orrs	r3, r3, r2
	str	r3, [sp, #48]
	.loc 1 134 0
	ldr	r2, [sp, #48]	@ float
	ldr	r3, [sp, #4]
	str	r2, [r3, #12]	@ float
	.loc 1 135 0
	ldrh	r3, [sp, #52]	@ movhi
	adds	r3, r3, #1
	strh	r3, [sp, #52]	@ movhi
	.loc 1 136 0
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r2, sp, #64
	add	r3, r3, r2
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsls	r2, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r2
	lsls	r2, r3, #16
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsls	r1, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r0, sp, #64
	add	r3, r3, r0
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r1
	uxth	r3, r3
	orrs	r3, r3, r2
	str	r3, [sp, #48]
	.loc 1 137 0
	ldr	r2, [sp, #48]	@ float
	ldr	r3, [sp, #4]
	str	r2, [r3, #16]	@ float
	.loc 1 138 0
	ldrh	r3, [sp, #52]	@ movhi
	adds	r3, r3, #1
	strh	r3, [sp, #52]	@ movhi
	.loc 1 139 0
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r2, sp, #64
	add	r3, r3, r2
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsls	r2, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r2
	lsls	r2, r3, #16
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsls	r1, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r0, sp, #64
	add	r3, r3, r0
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r1
	uxth	r3, r3
	orrs	r3, r3, r2
	str	r3, [sp, #48]
	.loc 1 140 0
	ldr	r2, [sp, #48]	@ float
	ldr	r3, [sp, #4]
	str	r2, [r3, #20]	@ float
	.loc 1 141 0
	ldrh	r3, [sp, #52]	@ movhi
	adds	r3, r3, #1
	strh	r3, [sp, #52]	@ movhi
	.loc 1 142 0
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r2, sp, #64
	add	r3, r3, r2
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsls	r2, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r2
	lsls	r2, r3, #16
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsls	r1, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r0, sp, #64
	add	r3, r3, r0
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r1
	uxth	r3, r3
	orrs	r3, r3, r2
	str	r3, [sp, #48]
	.loc 1 143 0
	ldr	r2, [sp, #48]	@ float
	ldr	r3, [sp, #4]
	str	r2, [r3, #24]	@ float
	.loc 1 144 0
	ldrh	r3, [sp, #52]	@ movhi
	adds	r3, r3, #1
	strh	r3, [sp, #52]	@ movhi
	.loc 1 145 0
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r2, sp, #64
	add	r3, r3, r2
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsls	r2, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r2
	lsls	r2, r3, #16
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsls	r1, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r0, sp, #64
	add	r3, r3, r0
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r1
	uxth	r3, r3
	orrs	r3, r3, r2
	str	r3, [sp, #48]
	.loc 1 146 0
	ldr	r2, [sp, #48]	@ float
	ldr	r3, [sp, #4]
	str	r2, [r3, #28]	@ float
	.loc 1 147 0
	ldrh	r3, [sp, #52]	@ movhi
	adds	r3, r3, #1
	strh	r3, [sp, #52]	@ movhi
	.loc 1 148 0
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r2, sp, #64
	add	r3, r3, r2
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsls	r2, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r2
	lsls	r2, r3, #16
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsls	r1, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r0, sp, #64
	add	r3, r3, r0
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r1
	uxth	r3, r3
	orrs	r3, r3, r2
	str	r3, [sp, #48]
	.loc 1 149 0
	ldr	r2, [sp, #48]	@ float
	ldr	r3, [sp, #4]
	str	r2, [r3, #32]	@ float
	.loc 1 150 0
	ldrh	r3, [sp, #52]	@ movhi
	adds	r3, r3, #1
	strh	r3, [sp, #52]	@ movhi
	.loc 1 151 0
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r2, sp, #64
	add	r3, r3, r2
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsls	r2, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r2
	lsls	r2, r3, #16
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r1, sp, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsls	r1, r3, #8
	ldrh	r3, [sp, #52]
	lsls	r3, r3, #2
	add	r0, sp, #64
	add	r3, r3, r0
	ldr	r3, [r3, #-56]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r1
	uxth	r3, r3
	orrs	r3, r3, r2
	str	r3, [sp, #48]
	.loc 1 152 0
	ldr	r2, [sp, #48]	@ float
	ldr	r3, [sp, #4]
	str	r2, [r3, #36]	@ float
	.loc 1 153 0
	ldrh	r3, [sp, #52]	@ movhi
	adds	r3, r3, #1
	strh	r3, [sp, #52]	@ movhi
	.loc 1 155 0
	movs	r3, #0
.L27:
	.loc 1 156 0 discriminator 1
	mov	r0, r3
	add	sp, sp, #68
.LCFI15:
	@ sp needed
	ldr	pc, [sp], #4
.LFE6:
	.size	sps30_read_measurement, .-sps30_read_measurement
	.section	.text.sps30_get_fan_auto_cleaning_interval,"ax",%progbits
	.align	1
	.global	sps30_get_fan_auto_cleaning_interval
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sps30_get_fan_auto_cleaning_interval, %function
sps30_get_fan_auto_cleaning_interval:
.LFB7:
	.loc 1 158 0
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI16:
	sub	sp, sp, #28
.LCFI17:
	str	r0, [sp, #4]
	.loc 1 163 0
	movs	r0, #105
	add	r2, sp, #8
	movs	r3, #2
	movw	r1, #32772
	bl	sensirion_i2c_read_cmd
	mov	r3, r0
	strh	r3, [sp, #20]	@ movhi
	.loc 1 166 0
	ldrsh	r3, [sp, #20]
	cmp	r3, #0
	beq	.L29
	.loc 1 167 0
	ldrsh	r3, [sp, #20]
	b	.L33
.L29:
.LBB4:
	.loc 1 169 0
	add	r3, sp, #8
	str	r3, [sp, #16]
	movs	r3, #2
	strh	r3, [sp, #14]	@ movhi
	movs	r3, #0
	strh	r3, [sp, #22]	@ movhi
	b	.L31
.L32:
	.loc 1 169 0 is_stmt 0 discriminator 3
	ldrh	r3, [sp, #22]
	lsls	r3, r3, #1
	ldr	r2, [sp, #16]
	add	r3, r3, r2
	ldrh	r3, [r3]
	lsls	r3, r3, #8
	sxth	r2, r3
	ldrh	r3, [sp, #22]
	lsls	r3, r3, #1
	ldr	r1, [sp, #16]
	add	r3, r3, r1
	ldrh	r3, [r3]
	lsrs	r3, r3, #8
	uxth	r3, r3
	sxth	r3, r3
	orrs	r3, r3, r2
	sxth	r1, r3
	ldrh	r3, [sp, #22]
	lsls	r3, r3, #1
	ldr	r2, [sp, #16]
	add	r3, r3, r2
	uxth	r2, r1
	strh	r2, [r3]	@ movhi
	ldrh	r3, [sp, #22]	@ movhi
	adds	r3, r3, #1
	strh	r3, [sp, #22]	@ movhi
.L31:
	.loc 1 169 0 discriminator 1
	ldrh	r2, [sp, #22]
	ldrh	r3, [sp, #14]
	cmp	r2, r3
	bcc	.L32
.LBE4:
	.loc 1 170 0 is_stmt 1
	ldr	r3, [sp, #8]
	uxth	r3, r3
	lsls	r3, r3, #8
	ldr	r2, [sp, #8]
	uxth	r2, r2
	lsrs	r2, r2, #8
	uxth	r2, r2
	orrs	r3, r3, r2
	lsls	r2, r3, #16
	ldr	r3, [sp, #8]
	lsrs	r3, r3, #16
	uxth	r3, r3
	lsls	r3, r3, #8
	ldr	r1, [sp, #8]
	lsrs	r1, r1, #16
	uxth	r1, r1
	lsrs	r1, r1, #8
	uxth	r1, r1
	orrs	r3, r3, r1
	uxth	r3, r3
	orrs	r2, r2, r3
	ldr	r3, [sp, #4]
	str	r2, [r3]
	.loc 1 172 0
	movs	r3, #0
.L33:
	.loc 1 173 0 discriminator 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI18:
	@ sp needed
	ldr	pc, [sp], #4
.LFE7:
	.size	sps30_get_fan_auto_cleaning_interval, .-sps30_get_fan_auto_cleaning_interval
	.section	.text.sps30_set_fan_auto_cleaning_interval,"ax",%progbits
	.align	1
	.global	sps30_set_fan_auto_cleaning_interval
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sps30_set_fan_auto_cleaning_interval, %function
sps30_set_fan_auto_cleaning_interval:
.LFB8:
	.loc 1 175 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI19:
	sub	sp, sp, #20
.LCFI20:
	str	r0, [sp, #4]
	.loc 1 177 0
	ldr	r3, [sp, #4]
	lsrs	r3, r3, #16
	uxth	r3, r3
	strh	r3, [sp, #8]	@ movhi
	ldr	r3, [sp, #4]
	uxth	r3, r3
	strh	r3, [sp, #10]	@ movhi
	.loc 1 180 0
	movs	r0, #105
	add	r2, sp, #8
	movs	r3, #2
	movw	r1, #32772
	bl	sensirion_i2c_write_cmd_with_args
	mov	r3, r0
	strh	r3, [sp, #14]	@ movhi
	.loc 1 183 0
	movw	r0, #20000
	bl	sensirion_sleep_usec
	.loc 1 184 0
	ldrsh	r3, [sp, #14]
	.loc 1 185 0
	mov	r0, r3
	add	sp, sp, #20
.LCFI21:
	@ sp needed
	ldr	pc, [sp], #4
.LFE8:
	.size	sps30_set_fan_auto_cleaning_interval, .-sps30_set_fan_auto_cleaning_interval
	.section	.text.sps30_get_fan_auto_cleaning_interval_days,"ax",%progbits
	.align	1
	.global	sps30_get_fan_auto_cleaning_interval_days
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sps30_get_fan_auto_cleaning_interval_days, %function
sps30_get_fan_auto_cleaning_interval_days:
.LFB9:
	.loc 1 187 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI22:
	sub	sp, sp, #20
.LCFI23:
	str	r0, [sp, #4]
	.loc 1 191 0
	add	r3, sp, #8
	mov	r0, r3
	bl	sps30_get_fan_auto_cleaning_interval
	mov	r3, r0
	strh	r3, [sp, #14]	@ movhi
	.loc 1 192 0
	ldrsh	r3, [sp, #14]
	cmp	r3, #0
	bge	.L37
	.loc 1 193 0
	ldrsh	r3, [sp, #14]
	b	.L39
.L37:
	.loc 1 195 0
	ldr	r3, [sp, #8]
	ldr	r2, .L40
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 196 0
	ldrsh	r3, [sp, #14]
.L39:
	.loc 1 197 0 discriminator 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI24:
	@ sp needed
	ldr	pc, [sp], #4
.L41:
	.align	2
.L40:
	.word	-1037155065
.LFE9:
	.size	sps30_get_fan_auto_cleaning_interval_days, .-sps30_get_fan_auto_cleaning_interval_days
	.section	.text.sps30_set_fan_auto_cleaning_interval_days,"ax",%progbits
	.align	1
	.global	sps30_set_fan_auto_cleaning_interval_days
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sps30_set_fan_auto_cleaning_interval_days, %function
sps30_set_fan_auto_cleaning_interval_days:
.LFB10:
	.loc 1 199 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI25:
	sub	sp, sp, #12
.LCFI26:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 200 0
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	ldr	r2, .L44
	mul	r3, r2, r3
	mov	r0, r3
	bl	sps30_set_fan_auto_cleaning_interval
	mov	r3, r0
	.loc 1 202 0
	mov	r0, r3
	add	sp, sp, #12
.LCFI27:
	@ sp needed
	ldr	pc, [sp], #4
.L45:
	.align	2
.L44:
	.word	86400
.LFE10:
	.size	sps30_set_fan_auto_cleaning_interval_days, .-sps30_set_fan_auto_cleaning_interval_days
	.section	.text.sps30_reset,"ax",%progbits
	.align	1
	.global	sps30_reset
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sps30_reset, %function
sps30_reset:
.LFB11:
	.loc 1 204 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI28:
	.loc 1 205 0
	movs	r3, #105
	movw	r1, #54020
	mov	r0, r3
	bl	sensirion_i2c_write_cmd
	mov	r3, r0
	.loc 1 206 0
	mov	r0, r3
	pop	{r3, pc}
.LFE11:
	.size	sps30_reset, .-sps30_reset
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI3-.LFB2
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI6-.LFB3
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI9-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI10-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI13-.LFB6
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x48
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI16-.LFB7
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI19-.LFB8
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI22-.LFB9
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI25-.LFB10
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI28-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE22:
	.text
.Letext0:
	.file 2 "/Applications/SEGGER Embedded Studio for ARM 4.12/include/stdint.h"
	.file 3 "../../../../sensiron_embedded_common/sensirion_arch_config.h"
	.file 4 "/Users/alexluisi/Documents/Nordic_Semi/nRF5_SDK_15.0.0_a53641a/examples/my_projects/sps30/sps30.h"
	.file 5 "/Users/alexluisi/Documents/Nordic_Semi/nRF5_SDK_15.0.0_a53641a/examples/my_projects/sps30/sps_git_version.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x543
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF589
	.byte	0xc
	.4byte	.LASF590
	.4byte	.LASF591
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF546
	.uleb128 0x3
	.4byte	.LASF548
	.byte	0x2
	.byte	0x30
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF547
	.uleb128 0x3
	.4byte	.LASF549
	.byte	0x2
	.byte	0x35
	.4byte	0x4d
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF550
	.uleb128 0x3
	.4byte	.LASF551
	.byte	0x2
	.byte	0x36
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF552
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF553
	.byte	0x2
	.byte	0x38
	.4byte	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF554
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF555
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF556
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x41
	.4byte	0x6d
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x3
	.byte	0x42
	.4byte	0x42
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x43
	.4byte	0x54
	.uleb128 0x6
	.4byte	0xa3
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x45
	.4byte	0x30
	.uleb128 0x6
	.4byte	0xb3
	.uleb128 0x5
	.ascii	"f32\000"
	.byte	0x3
	.byte	0x48
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF557
	.uleb128 0x7
	.4byte	.LASF592
	.byte	0x5
	.byte	0x23
	.4byte	0xdf
	.uleb128 0x8
	.byte	0x4
	.4byte	0xec
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF558
	.uleb128 0x6
	.4byte	0xe5
	.uleb128 0x9
	.4byte	.LASF593
	.byte	0x28
	.byte	0x4
	.byte	0x2b
	.4byte	0x176
	.uleb128 0xa
	.4byte	.LASF559
	.byte	0x4
	.byte	0x2c
	.4byte	0xc2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF560
	.byte	0x4
	.byte	0x2d
	.4byte	0xc2
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF561
	.byte	0x4
	.byte	0x2e
	.4byte	0xc2
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF562
	.byte	0x4
	.byte	0x2f
	.4byte	0xc2
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF563
	.byte	0x4
	.byte	0x30
	.4byte	0xc2
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF564
	.byte	0x4
	.byte	0x31
	.4byte	0xc2
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF565
	.byte	0x4
	.byte	0x32
	.4byte	0xc2
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF566
	.byte	0x4
	.byte	0x33
	.4byte	0xc2
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF567
	.byte	0x4
	.byte	0x34
	.4byte	0xc2
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF568
	.byte	0x4
	.byte	0x35
	.4byte	0xc2
	.byte	0x24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF572
	.byte	0x1
	.byte	0x27
	.4byte	0xbd
	.uleb128 0x5
	.byte	0x3
	.4byte	SPS_I2C_ADDRESS
	.uleb128 0xc
	.4byte	.LASF581
	.byte	0x1
	.byte	0xcc
	.4byte	0x98
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF569
	.byte	0x1
	.byte	0xc7
	.4byte	0x98
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c4
	.uleb128 0xe
	.4byte	.LASF571
	.byte	0x1
	.byte	0xc7
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF570
	.byte	0x1
	.byte	0xbb
	.4byte	0x98
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x208
	.uleb128 0xe
	.4byte	.LASF571
	.byte	0x1
	.byte	0xbb
	.4byte	0x208
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.ascii	"ret\000"
	.byte	0x1
	.byte	0xbc
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0xb
	.4byte	.LASF573
	.byte	0x1
	.byte	0xbd
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb3
	.uleb128 0xd
	.4byte	.LASF574
	.byte	0x1
	.byte	0xaf
	.4byte	0x98
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x252
	.uleb128 0xe
	.4byte	.LASF573
	.byte	0x1
	.byte	0xaf
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.ascii	"ret\000"
	.byte	0x1
	.byte	0xb0
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0xb
	.4byte	.LASF575
	.byte	0x1
	.byte	0xb1
	.4byte	0x262
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x10
	.4byte	0xae
	.4byte	0x262
	.uleb128 0x11
	.4byte	0x78
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x252
	.uleb128 0xd
	.4byte	.LASF576
	.byte	0x1
	.byte	0x9e
	.4byte	0x98
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fe
	.uleb128 0xe
	.4byte	.LASF573
	.byte	0x1
	.byte	0x9e
	.4byte	0x2fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.byte	0x4
	.byte	0x1
	.byte	0x9f
	.4byte	0x2ad
	.uleb128 0x13
	.ascii	"u16\000"
	.byte	0x1
	.byte	0xa0
	.4byte	0x304
	.uleb128 0x13
	.ascii	"u32\000"
	.byte	0x1
	.byte	0xa1
	.4byte	0x8d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF575
	.byte	0x1
	.byte	0xa2
	.4byte	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.ascii	"ret\000"
	.byte	0x1
	.byte	0xa3
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xf
	.ascii	"__a\000"
	.byte	0x1
	.byte	0xa9
	.4byte	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.ascii	"__e\000"
	.byte	0x1
	.byte	0xa9
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xf
	.ascii	"__w\000"
	.byte	0x1
	.byte	0xa9
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x8d
	.uleb128 0x10
	.4byte	0xa3
	.4byte	0x314
	.uleb128 0x11
	.4byte	0x78
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa3
	.uleb128 0xd
	.4byte	.LASF577
	.byte	0x1
	.byte	0x6b
	.4byte	0x98
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d5
	.uleb128 0xe
	.4byte	.LASF578
	.byte	0x1
	.byte	0x6b
	.4byte	0x3d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xf
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.ascii	"idx\000"
	.byte	0x1
	.byte	0x6d
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.byte	0x4
	.byte	0x1
	.byte	0x6e
	.4byte	0x384
	.uleb128 0x13
	.ascii	"u16\000"
	.byte	0x1
	.byte	0x6f
	.4byte	0x304
	.uleb128 0x13
	.ascii	"u\000"
	.byte	0x1
	.byte	0x70
	.4byte	0x8d
	.uleb128 0x13
	.ascii	"f\000"
	.byte	0x1
	.byte	0x71
	.4byte	0xc2
	.byte	0
	.uleb128 0xf
	.ascii	"val\000"
	.byte	0x1
	.byte	0x72
	.4byte	0x35e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF575
	.byte	0x1
	.byte	0x72
	.4byte	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xf
	.ascii	"__a\000"
	.byte	0x1
	.byte	0x79
	.4byte	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.ascii	"__e\000"
	.byte	0x1
	.byte	0x79
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xf
	.ascii	"__w\000"
	.byte	0x1
	.byte	0x79
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf1
	.uleb128 0x10
	.4byte	0x35e
	.4byte	0x3eb
	.uleb128 0x11
	.4byte	0x78
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF579
	.byte	0x1
	.byte	0x66
	.4byte	0x98
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x413
	.uleb128 0xe
	.4byte	.LASF580
	.byte	0x1
	.byte	0x66
	.4byte	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xc
	.4byte	.LASF582
	.byte	0x1
	.byte	0x62
	.4byte	0x98
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF587
	.byte	0x1
	.byte	0x59
	.4byte	0x98
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x450
	.uleb128 0xf
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x5a
	.4byte	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF583
	.byte	0x1
	.byte	0x41
	.4byte	0x98
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f3
	.uleb128 0xe
	.4byte	.LASF584
	.byte	0x1
	.byte	0x41
	.4byte	0x4f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0x42
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0xf
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x12
	.byte	0x20
	.byte	0x1
	.byte	0x44
	.4byte	0x4b0
	.uleb128 0x16
	.4byte	.LASF584
	.byte	0x1
	.byte	0x45
	.4byte	0x4f9
	.uleb128 0x16
	.4byte	.LASF585
	.byte	0x1
	.byte	0x46
	.4byte	0xa3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF586
	.byte	0x1
	.byte	0x47
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xf
	.ascii	"__a\000"
	.byte	0x1
	.byte	0x4f
	.4byte	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.ascii	"__e\000"
	.byte	0x1
	.byte	0x4f
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0xf
	.ascii	"__w\000"
	.byte	0x1
	.byte	0x4f
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe5
	.uleb128 0x10
	.4byte	0xe5
	.4byte	0x509
	.uleb128 0x11
	.4byte	0x78
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF588
	.byte	0x1
	.byte	0x39
	.4byte	0x98
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x531
	.uleb128 0xb
	.4byte	.LASF584
	.byte	0x1
	.byte	0x3a
	.4byte	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x17
	.4byte	.LASF594
	.byte	0x1
	.byte	0x34
	.4byte	0xdf
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.uleb128 0x2134
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x18c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x547
	.4byte	0x176
	.ascii	"SPS_I2C_ADDRESS\000"
	.4byte	0x187
	.ascii	"sps30_reset\000"
	.4byte	0x19c
	.ascii	"sps30_set_fan_auto_cleaning_interval_days\000"
	.4byte	0x1c4
	.ascii	"sps30_get_fan_auto_cleaning_interval_days\000"
	.4byte	0x20e
	.ascii	"sps30_set_fan_auto_cleaning_interval\000"
	.4byte	0x267
	.ascii	"sps30_get_fan_auto_cleaning_interval\000"
	.4byte	0x31a
	.ascii	"sps30_read_measurement\000"
	.4byte	0x3eb
	.ascii	"sps30_read_data_ready\000"
	.4byte	0x413
	.ascii	"sps30_stop_measurement\000"
	.4byte	0x428
	.ascii	"sps30_start_measurement\000"
	.4byte	0x450
	.ascii	"sps30_get_serial\000"
	.4byte	0x509
	.ascii	"sps30_probe\000"
	.4byte	0x531
	.ascii	"sps_get_driver_version\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x11d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x547
	.4byte	0x29
	.ascii	"signed char\000"
	.4byte	0x3b
	.ascii	"unsigned char\000"
	.4byte	0x30
	.ascii	"uint8_t\000"
	.4byte	0x4d
	.ascii	"short int\000"
	.4byte	0x42
	.ascii	"int16_t\000"
	.4byte	0x5f
	.ascii	"short unsigned int\000"
	.4byte	0x54
	.ascii	"uint16_t\000"
	.4byte	0x66
	.ascii	"int\000"
	.4byte	0x78
	.ascii	"unsigned int\000"
	.4byte	0x6d
	.ascii	"uint32_t\000"
	.4byte	0x7f
	.ascii	"long long int\000"
	.4byte	0x86
	.ascii	"long long unsigned int\000"
	.4byte	0x8d
	.ascii	"u32\000"
	.4byte	0x98
	.ascii	"s16\000"
	.4byte	0xa3
	.ascii	"u16\000"
	.4byte	0xb3
	.ascii	"u8\000"
	.4byte	0xcd
	.ascii	"float\000"
	.4byte	0xc2
	.ascii	"f32\000"
	.4byte	0xe5
	.ascii	"char\000"
	.4byte	0xf1
	.ascii	"sps30_measurement\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x7
	.4byte	.Ldebug_macro1
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x3
	.uleb128 0x20
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF454
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.file 6 "../../../../sensiron_embedded_common/sensirion_i2c.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF517
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.file 7 "../../../../sensiron_embedded_common/sensirion_common.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF534
	.byte	0x4
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF545
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.0.edf0f7a21dc59728edd00f74b4a4abb8,comdat
.Ldebug_macro1:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0
	.4byte	.LASF395
	.byte	0x6
	.uleb128 0
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0
	.4byte	.LASF397
	.byte	0x6
	.uleb128 0
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0
	.4byte	.LASF401
	.byte	0x6
	.uleb128 0
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0
	.4byte	.LASF416
	.byte	0x6
	.uleb128 0
	.4byte	.LASF417
	.byte	0x6
	.uleb128 0
	.4byte	.LASF418
	.byte	0x6
	.uleb128 0
	.4byte	.LASF419
	.byte	0x6
	.uleb128 0
	.4byte	.LASF420
	.byte	0x6
	.uleb128 0
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0
	.4byte	.LASF422
	.byte	0x6
	.uleb128 0
	.4byte	.LASF423
	.byte	0x6
	.uleb128 0
	.4byte	.LASF424
	.byte	0x6
	.uleb128 0
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0
	.4byte	.LASF453
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.45.370e29a4497ae7c3b4c92e383ca5b648,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF514
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.sensirion_arch_config.h.98.251539139e1b4fa4287c23e64adb13c0,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF516
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.sensirion_common.h.32.11ba7945df33cb93073a4ff7dc2a7dd4,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF533
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.sps30.h.33.384c829f91d13e91815deaeaf57075ec,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF536
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF421:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF246:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF270:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF203:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF468:
	.ascii	"INTMAX_MIN (-9223372036854775807LL-1)\000"
.LASF209:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF333:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF475:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF223:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF592:
	.ascii	"SPS_DRV_VERSION_STR\000"
.LASF503:
	.ascii	"INT16_C(x) (x)\000"
.LASF533:
	.ascii	"SENSIRION_MAX_BUFFER_WORDS 32\000"
.LASF245:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF443:
	.ascii	"FLOAT_ABI_HARD 1\000"
.LASF323:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF198:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF191:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF558:
	.ascii	"char\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF423:
	.ascii	"__ARM_NEON__\000"
.LASF391:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF335:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF560:
	.ascii	"mc_2p5\000"
.LASF262:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF225:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF164:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF85:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF68:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF522:
	.ascii	"be16_to_cpu(s) (((u16)(s) << 8) | (0xff & ((u16)(s)"
	.ascii	") >> 8))\000"
.LASF563:
	.ascii	"nc_0p5\000"
.LASF417:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF285:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF586:
	.ascii	"buffer\000"
.LASF261:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF221:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF431:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF432:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF481:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF554:
	.ascii	"unsigned int\000"
.LASF584:
	.ascii	"serial\000"
.LASF396:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF450:
	.ascii	"S132 1\000"
.LASF121:
	.ascii	"__UINT16_C(c) c\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF38:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF154:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF126:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF292:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF454:
	.ascii	"SENSIRION_ARCH_CONFIG_H \000"
.LASF393:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF368:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF162:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF228:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF374:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF398:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF238:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF177:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF227:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF479:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
.LASF325:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF445:
	.ascii	"NO_VTOR_CONFIG 1\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF399:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF458:
	.ascii	"INT8_MIN (-128)\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF574:
	.ascii	"sps30_set_fan_auto_cleaning_interval\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF239:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF194:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF275:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF484:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF147:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF408:
	.ascii	"__ARM_ARCH 7\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF576:
	.ascii	"sps30_get_fan_auto_cleaning_interval\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF330:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF253:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF290:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF206:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF477:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF529:
	.ascii	"CRC8_LEN 1\000"
.LASF316:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF332:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF321:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF416:
	.ascii	"__ARM_FP 4\000"
.LASF536:
	.ascii	"SPS_MAX_SERIAL_LEN 32\000"
.LASF159:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF414:
	.ascii	"__ARMEL__ 1\000"
.LASF581:
	.ascii	"sps30_reset\000"
.LASF489:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF107:
	.ascii	"__INT8_C(c) c\000"
.LASF411:
	.ascii	"__thumb2__ 1\000"
.LASF546:
	.ascii	"signed char\000"
.LASF178:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF493:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF524:
	.ascii	"be64_to_cpu(s) (((u64)be32_to_cpu(s) << 32) | (0xff"
	.ascii	"ffffff & ((u64)be32_to_cpu((s) >> 32))))\000"
.LASF331:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF553:
	.ascii	"uint32_t\000"
.LASF424:
	.ascii	"__ARM_NEON\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF579:
	.ascii	"sps30_read_data_ready\000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF156:
	.ascii	"__FLT_EPSILON__ 1.1\000"
.LASF202:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF375:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF505:
	.ascii	"INT32_C(x) (x ##L)\000"
.LASF491:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF357:
	.ascii	"__SA_IBIT__ 16\000"
.LASF287:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF132:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF161:
	.ascii	"__FP_FAST_FMAF 1\000"
.LASF557:
	.ascii	"float\000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF376:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF464:
	.ascii	"INT32_MIN (-2147483647L-1)\000"
.LASF358:
	.ascii	"__DA_FBIT__ 31\000"
.LASF590:
	.ascii	"/Users/alexluisi/Documents/Nordic_Semi/nRF5_SDK_15."
	.ascii	"0.0_a53641a/examples/my_projects/sps30/sps30.c\000"
.LASF236:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF556:
	.ascii	"long long unsigned int\000"
.LASF580:
	.ascii	"data_ready\000"
.LASF303:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF549:
	.ascii	"int16_t\000"
.LASF204:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF120:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF272:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF257:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF429:
	.ascii	"__ARM_EABI__ 1\000"
.LASF521:
	.ascii	"NULL ((void *)0)\000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF248:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF541:
	.ascii	"SPS_CMD_GET_DATA_READY 0x0202\000"
.LASF98:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF283:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF252:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF280:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF324:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF402:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF124:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF146:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF291:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF175:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF311:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF278:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF57:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF518:
	.ascii	"SENSIRION_COMMON_H \000"
.LASF217:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF535:
	.ascii	"SPS30_H \000"
.LASF438:
	.ascii	"__ARM_ARCH_FPV4_SP_D16__ 1\000"
.LASF201:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF420:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF145:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF294:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF199:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF439:
	.ascii	"__SES_VERSION 41200\000"
.LASF406:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF244:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF266:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF90:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF313:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF463:
	.ascii	"INT32_MAX 2147483647L\000"
.LASF305:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF117:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF441:
	.ascii	"BOARD_PCA10040 1\000"
.LASF444:
	.ascii	"INITIALIZE_USER_SECTIONS 1\000"
.LASF210:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF295:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF392:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF389:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF460:
	.ascii	"INT16_MIN (-32767-1)\000"
.LASF365:
	.ascii	"__USA_IBIT__ 16\000"
.LASF351:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF511:
	.ascii	"WCHAR_MIN (-2147483647L-1)\000"
.LASF247:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF430:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF594:
	.ascii	"sps_get_driver_version\000"
.LASF499:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF405:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF302:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF235:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF434:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF5:
	.ascii	"__GNUC__ 7\000"
.LASF412:
	.ascii	"__THUMBEL__ 1\000"
.LASF185:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF359:
	.ascii	"__DA_IBIT__ 32\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF315:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF567:
	.ascii	"nc_10p0\000"
.LASF134:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF451:
	.ascii	"SOFTDEVICE_PRESENT 1\000"
.LASF326:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF488:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF356:
	.ascii	"__SA_FBIT__ 15\000"
.LASF208:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF469:
	.ascii	"INTMAX_MAX 9223372036854775807LL\000"
.LASF298:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF583:
	.ascii	"sps30_get_serial\000"
.LASF197:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF442:
	.ascii	"CONFIG_GPIO_AS_PINRESET 1\000"
.LASF86:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF372:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF347:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF269:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF401:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF476:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF152:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF327:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF514:
	.ascii	"WINT_MAX 2147483647L\000"
.LASF448:
	.ascii	"NRF52_PAN_74 1\000"
.LASF328:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF301:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF373:
	.ascii	"__NO_INLINE__ 1\000"
.LASF300:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF299:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF211:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF370:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF490:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF193:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF310:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF135:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF195:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF515:
	.ascii	"SENSIRION_BIG_ENDIAN 0\000"
.LASF165:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1011\000"
.LASF339:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF367:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF192:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF482:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF455:
	.ascii	"__stdint_H \000"
.LASF216:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF143:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF540:
	.ascii	"SPS_CMD_READ_MEASUREMENT 0x0300\000"
.LASF230:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF478:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF61:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF473:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF215:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF394:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF241:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF320:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF284:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF281:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF542:
	.ascii	"SPS_CMD_AUTOCLEAN_INTERVAL 0x8004\000"
.LASF575:
	.ascii	"data\000"
.LASF108:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF229:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF102:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF103:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF453:
	.ascii	"DEBUG 1\000"
.LASF155:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF456:
	.ascii	"UINT8_MAX 255\000"
.LASF548:
	.ascii	"uint8_t\000"
.LASF496:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF94:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF237:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF274:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF437:
	.ascii	"__SES_ARM 1\000"
.LASF513:
	.ascii	"WINT_MIN (-2147483647L-1)\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF218:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF566:
	.ascii	"nc_4p0\000"
.LASF525:
	.ascii	"SENSIRION_WORDS_TO_BYTES(a,w) for (u16 *__a = (u16 "
	.ascii	"*)(a), __e = (w), __w = 0; __w < __e; ++__w) { __a["
	.ascii	"__w] = be16_to_cpu(__a[__w]); }\000"
.LASF163:
	.ascii	"__DBL_DIG__ 15\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF106:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF314:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF353:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF273:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF172:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF220:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF308:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF470:
	.ascii	"UINTMAX_MAX 18446744073709551615ULL\000"
.LASF350:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF219:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF413:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF352:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF555:
	.ascii	"long long int\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF139:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF297:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF407:
	.ascii	"__arm__ 1\000"
.LASF577:
	.ascii	"sps30_read_measurement\000"
.LASF8:
	.ascii	"__VERSION__ \"7.3.1 20180622 (release) [ARM/embedde"
	.ascii	"d-7-branch revision 261907]\"\000"
.LASF176:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF343:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF362:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF472:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF387:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF520:
	.ascii	"STATUS_FAIL (-1)\000"
.LASF435:
	.ascii	"__ELF__ 1\000"
.LASF507:
	.ascii	"INT64_C(x) (x ##LL)\000"
.LASF397:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF322:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF109:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF317:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF171:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF433:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF309:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF166:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF131:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF506:
	.ascii	"UINT32_C(x) (x ##UL)\000"
.LASF516:
	.ascii	"SENSIRION_I2C_CLOCK_PERIOD_USEC 10\000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF99:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF279:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF81:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF306:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF494:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF573:
	.ascii	"interval_seconds\000"
.LASF568:
	.ascii	"typical_particle_size\000"
.LASF267:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF319:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF271:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF588:
	.ascii	"sps30_probe\000"
.LASF249:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF425:
	.ascii	"__ARM_NEON_FP\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF265:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF360:
	.ascii	"__TA_FBIT__ 63\000"
.LASF189:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF142:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF104:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF530:
	.ascii	"SENSIRION_COMMAND_SIZE 2\000"
.LASF582:
	.ascii	"sps30_stop_measurement\000"
.LASF289:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF390:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF593:
	.ascii	"sps30_measurement\000"
.LASF545:
	.ascii	"SPS_WRITE_DELAY_US 20000\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF307:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF233:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF288:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF508:
	.ascii	"UINT64_C(x) (x ##ULL)\000"
.LASF447:
	.ascii	"NRF52832_XXAA 1\000"
.LASF84:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF254:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF537:
	.ascii	"SPS_CMD_START_MEASUREMENT 0x0010\000"
.LASF255:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF585:
	.ascii	"__enforce_alignment\000"
.LASF467:
	.ascii	"UINT64_MAX 18446744073709551615ULL\000"
.LASF400:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF337:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF551:
	.ascii	"uint16_t\000"
.LASF371:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF340:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF256:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF304:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF559:
	.ascii	"mc_1p0\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF462:
	.ascii	"UINT32_MAX 4294967295UL\000"
.LASF539:
	.ascii	"SPS_CMD_STOP_MEASUREMENT 0x0104\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF419:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF186:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF54:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF474:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF153:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF100:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF87:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF492:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF501:
	.ascii	"INT8_C(x) (x)\000"
.LASF344:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF349:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF404:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF486:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF550:
	.ascii	"short int\000"
.LASF312:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF591:
	.ascii	"/Users/alexluisi/Documents/Nordic_Semi/nRF5_SDK_15."
	.ascii	"0.0_a53641a/examples/my_projects/dk_shield_base/pca"
	.ascii	"10040/s132/ses\000"
.LASF242:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF565:
	.ascii	"nc_2p5\000"
.LASF346:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF43:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF222:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF364:
	.ascii	"__USA_FBIT__ 16\000"
.LASF180:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF338:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF527:
	.ascii	"CRC8_POLYNOMIAL 0x31\000"
.LASF276:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF498:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF250:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF587:
	.ascii	"sps30_start_measurement\000"
.LASF457:
	.ascii	"INT8_MAX 127\000"
.LASF122:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF543:
	.ascii	"SPS_CMD_GET_SERIAL 0xd033\000"
.LASF483:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF410:
	.ascii	"__thumb__ 1\000"
.LASF190:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF41:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF183:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF342:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF263:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF532:
	.ascii	"SENSIRION_NUM_WORDS(x) (sizeof(x) / SENSIRION_WORD_"
	.ascii	"SIZE)\000"
.LASF466:
	.ascii	"INT64_MAX 9223372036854775807LL\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF495:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF259:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF116:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF336:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF212:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF363:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF403:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF459:
	.ascii	"UINT16_MAX 65535\000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF82:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF67:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF465:
	.ascii	"INT64_MIN (-9223372036854775807LL-1)\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF47:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF179:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF226:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF544:
	.ascii	"SPS_CMD_RESET 0xd304\000"
.LASF415:
	.ascii	"__VFP_FP__ 1\000"
.LASF282:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF354:
	.ascii	"__HA_FBIT__ 7\000"
.LASF88:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF589:
	.ascii	"GNU C99 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -fmessage-length=0 -mcpu=cort"
	.ascii	"ex-m4 -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-s"
	.ascii	"p-d16 -mthumb -mtp=soft -munaligned-access -std=gnu"
	.ascii	"99 -g3 -gpubnames -fomit-frame-pointer -fno-dwarf2-"
	.ascii	"cfi-asm -fno-builtin -ffunction-sections -fdata-sec"
	.ascii	"tions -fshort-enums -fno-common\000"
.LASF296:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF83:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF562:
	.ascii	"mc_10p0\000"
.LASF125:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF569:
	.ascii	"sps30_set_fan_auto_cleaning_interval_days\000"
.LASF318:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF500:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF258:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF345:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF348:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF355:
	.ascii	"__HA_IBIT__ 8\000"
.LASF388:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF517:
	.ascii	"SENSIRION_I2C_H \000"
.LASF157:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF268:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF440:
	.ascii	"NDEBUG 1\000"
.LASF138:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF170:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF436:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF578:
	.ascii	"measurement\000"
.LASF461:
	.ascii	"INT16_MAX 32767\000"
.LASF480:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF471:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF386:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF377:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF151:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF452:
	.ascii	"SWI_DISABLE0 1\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF561:
	.ascii	"mc_4p0\000"
.LASF547:
	.ascii	"unsigned char\000"
.LASF234:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF115:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF428:
	.ascii	"__ARM_PCS_VFP 1\000"
.LASF571:
	.ascii	"interval_days\000"
.LASF200:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF446:
	.ascii	"NRF52 1\000"
.LASF564:
	.ascii	"nc_1p0\000"
.LASF260:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF114:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF485:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF187:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF341:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF329:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF502:
	.ascii	"UINT8_C(x) (x ##U)\000"
.LASF510:
	.ascii	"UINTMAX_C(x) (x ##ULL)\000"
.LASF519:
	.ascii	"STATUS_OK 0\000"
.LASF264:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF369:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF509:
	.ascii	"INTMAX_C(x) (x ##LL)\000"
.LASF150:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF207:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF144:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF174:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF169:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF395:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF160:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF526:
	.ascii	"ARRAY_SIZE(x) (sizeof(x) / sizeof(*(x)))\000"
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF91:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF523:
	.ascii	"be32_to_cpu(s) (((u32)be16_to_cpu(s) << 16) | (0xff"
	.ascii	"ff & (be16_to_cpu((s) >> 16))))\000"
.LASF449:
	.ascii	"NRF_SD_BLE_API_VERSION 6\000"
.LASF409:
	.ascii	"__APCS_32__ 1\000"
.LASF214:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF487:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF528:
	.ascii	"CRC8_INIT 0xFF\000"
.LASF534:
	.ascii	"SPS_GIT_VERSION_H \000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF232:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF167:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF570:
	.ascii	"sps30_get_fan_auto_cleaning_interval_days\000"
.LASF552:
	.ascii	"short unsigned int\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF361:
	.ascii	"__TA_IBIT__ 64\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF231:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF504:
	.ascii	"UINT16_C(x) (x ##U)\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF572:
	.ascii	"SPS_I2C_ADDRESS\000"
.LASF531:
	.ascii	"SENSIRION_WORD_SIZE 2\000"
.LASF251:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF182:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF426:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF113:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF418:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF181:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF224:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF140:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF173:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF538:
	.ascii	"SPS_CMD_START_MEASUREMENT_ARG 0x0300\000"
.LASF196:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF334:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF277:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF366:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF427:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF512:
	.ascii	"WCHAR_MAX 2147483647L\000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF184:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF243:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF92:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF497:
	.ascii	"SIZE_MAX INT32_MAX\000"
.LASF286:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF213:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF422:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF293:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF188:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF205:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF240:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF158:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF133:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF168:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
	.ident	"GCC: (GNU) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"

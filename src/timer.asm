@include

run_timer:

; increment frame count by 1, rollover at 60
    ldx #$03

-:  inc !timer_seconds_or_frames_units,x
    lda !timer_seconds_or_frames_units,x : cmp #$ff : bcc .done
    lda #$f5 : sta !timer_seconds_or_frames_units,x

    inc !timer_seconds_or_frames_tens,x
    lda !timer_seconds_or_frames_tens,x : cmp #$fb : bcc .done
    lda #$f5 : sta !timer_seconds_or_frames_tens,x

    dex : dex : dex : bpl -

    inc !timer_minutes_units
    lda !timer_minutes_units : cmp #$ff : bcc .done

    ; minutes count is 10, stop updating the timer
    lda #$fe : sta !timer_minutes_units : sta !timer_seconds_units : sta !timer_frames_units
    lda #$fa : sta !timer_seconds_tens : sta !timer_frames_tens

.done
    lda $0b : and #$0f : bne +
    lda #$83 : sta $95
+:  inc $0b
    lda $0b
    rts 

handle_level_select:
    lda !joypad_p1_press
    and #$20
    beq +
    inc $0d
    lda $0d : cmp #$0e : bcc +
    dec $0d

+:  lda $2b
    ora $2c
    rts 
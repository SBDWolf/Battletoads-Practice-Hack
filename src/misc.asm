@include

%org($07, bank7_free_space)

initialize_timer:
    ; restore hijacked instructions
    lda #$10
    sta $9d

    lda #$f5
    sta !timer_minutes_units
    sta !timer_seconds_tens
    sta !timer_seconds_units
    sta !timer_frames_tens
    sta !timer_frames_units
    lda #$00
    sta !timer_minutes_padding
    sta !timer_seconds_padding
    rts

warnpc $ff78
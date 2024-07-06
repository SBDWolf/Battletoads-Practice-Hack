@include

macro org(bank, offset)
    org $10+(<offset>%$8000)+($8000*<bank>)
    base <offset>
endmacro

; new ram
; !timer_minutes_units            = $5f4
; !timer_seconds_tens             = $5f5
; !timer_seconds_units            = $5f6
; !timer_frames_tens              = $5f7
; !timer_frames_units             = $5f8


!timer_minutes_units            = $1a9
!timer_minutes_padding          = $1aa
!timer_seconds_or_frames_tens   = $1ab
!timer_seconds_or_frames_units  = $1ac
!timer_seconds_tens             = $1ab
!timer_seconds_units            = $1ac
!timer_seconds_padding          = $1ad
!timer_frames_tens              = $1ae
!timer_frames_units             = $1af

!level_select                   = $650


; existing ram
!frame_counter                  = $0b
!joypad_p1_press                = $2b
!hud_start                      = $1a9


; rom
bank0_score_update_edit                 = $bc7d
bank0_score_update_edit_turbo_tunnel    = $b238
bank0_frame_counter_update_hijack       = $8705
bank0_title_screen_hijack               = $e5ca
bank0_new_free_space                    = $bccf ; overwriting the code used to update the score
bank0_title_screen_skip_edit            = $82a9
bank0_level1_start_edit                 = $831f
bank3_score_update_edit                 = $d183
bank7_code_copy_hijack                  = $8c61
bank7_free_space                        = $ff40

; constants
!INPUT_right                              = $01
!INPUT_left                               = $02
!INPUT_down                               = $04
!INPUT_up                                 = $08
!INPUT_start                              = $10
!INPUT_select                             = $20
!INPUT_B                                  = $40
!INPUT_A                                  = $80

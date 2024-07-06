@include

; ; should run every frame in gameplay after NMI
%org($00, bank0_frame_counter_update_hijack)
        jsr run_timer
        nop
%org($00, bank0_title_screen_hijack)
        jsr handle_level_select
        nop

%org($07, bank7_code_copy_hijack)
        jsr initialize_timer
        nop
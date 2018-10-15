.class public Lnt;
.super Ljava/lang/Object;
.source "OldDownloadInfoParser.java"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "resType"    # I

    .prologue
    .line 120
    sparse-switch p0, :sswitch_data_0

    .line 200
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 122
    :sswitch_0
    const-string/jumbo v0, "adapter_file"

    goto :goto_0

    .line 124
    :sswitch_1
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 126
    :sswitch_2
    const-string/jumbo v0, "cnsms_resource"

    goto :goto_0

    .line 128
    :sswitch_3
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 130
    :sswitch_4
    const-string/jumbo v0, "mmp_application"

    goto :goto_0

    .line 132
    :sswitch_5
    const-string/jumbo v0, "mmp_file"

    goto :goto_0

    .line 134
    :sswitch_6
    const-string/jumbo v0, "music_file"

    goto :goto_0

    .line 136
    :sswitch_7
    const-string/jumbo v0, "permission_file"

    goto :goto_0

    .line 138
    :sswitch_8
    const-string/jumbo v0, "plugin"

    goto :goto_0

    .line 140
    :sswitch_9
    const-string/jumbo v0, "theme_package"

    goto :goto_0

    .line 142
    :sswitch_a
    const-string/jumbo v0, "tone_file"

    goto :goto_0

    .line 144
    :sswitch_b
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 146
    :sswitch_c
    const-string/jumbo v0, "yueyu_resource"

    goto :goto_0

    .line 148
    :sswitch_d
    const-string/jumbo v0, "browser_file"

    goto :goto_0

    .line 150
    :sswitch_e
    const-string/jumbo v0, "app_channel_application"

    goto :goto_0

    .line 152
    :sswitch_f
    const-string/jumbo v0, "app_recommand_application"

    goto :goto_0

    .line 154
    :sswitch_10
    const-string/jumbo v0, "lingxi_update_application"

    goto :goto_0

    .line 156
    :sswitch_11
    const-string/jumbo v0, "browser_application"

    goto :goto_0

    .line 158
    :sswitch_12
    const-string/jumbo v0, "phone_type_db_full"

    goto :goto_0

    .line 160
    :sswitch_13
    const-string/jumbo v0, "phone_type_db_incremental"

    goto :goto_0

    .line 162
    :sswitch_14
    const-string/jumbo v0, "share_pic"

    goto :goto_0

    .line 164
    :sswitch_15
    const-string/jumbo v0, "app_native_recommand"

    goto :goto_0

    .line 166
    :sswitch_16
    const-string/jumbo v0, "app_native_game"

    goto :goto_0

    .line 168
    :sswitch_17
    const-string/jumbo v0, "app_voice_dail"

    goto :goto_0

    .line 170
    :sswitch_18
    const-string/jumbo v0, "cards_res"

    goto :goto_0

    .line 172
    :sswitch_19
    const-string/jumbo v0, "wifi_custom"

    goto :goto_0

    .line 174
    :sswitch_1a
    const-string/jumbo v0, "smarthome_app"

    goto :goto_0

    .line 176
    :sswitch_1b
    const-string/jumbo v0, "app_card"

    goto :goto_0

    .line 178
    :sswitch_1c
    const-string/jumbo v0, "app_page_t1"

    goto :goto_0

    .line 180
    :sswitch_1d
    const-string/jumbo v0, "app_page_t2"

    goto :goto_0

    .line 182
    :sswitch_1e
    const-string/jumbo v0, "app_page_t3"

    goto :goto_0

    .line 184
    :sswitch_1f
    const-string/jumbo v0, "game_card"

    goto :goto_0

    .line 186
    :sswitch_20
    const-string/jumbo v0, "game_page_t1"

    goto/16 :goto_0

    .line 188
    :sswitch_21
    const-string/jumbo v0, "game_page_t2"

    goto/16 :goto_0

    .line 190
    :sswitch_22
    const-string/jumbo v0, "game_page_t3"

    goto/16 :goto_0

    .line 192
    :sswitch_23
    const-string/jumbo v0, "sm_search_page"

    goto/16 :goto_0

    .line 194
    :sswitch_24
    const-string/jumbo v0, "setting_lock_screen"

    goto/16 :goto_0

    .line 196
    :sswitch_25
    const-string/jumbo v0, "sohu_news_page"

    goto/16 :goto_0

    .line 198
    :sswitch_26
    const-string/jumbo v0, "app_unknown"

    goto/16 :goto_0

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_1
        0x2 -> :sswitch_b
        0x3 -> :sswitch_c
        0x4 -> :sswitch_9
        0x5 -> :sswitch_6
        0x6 -> :sswitch_a
        0x7 -> :sswitch_4
        0x8 -> :sswitch_2
        0x9 -> :sswitch_0
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_d
        0xd -> :sswitch_5
        0xe -> :sswitch_13
        0xf -> :sswitch_12
        0x10 -> :sswitch_14
        0x12 -> :sswitch_18
        0x14 -> :sswitch_19
        0x65 -> :sswitch_10
        0x66 -> :sswitch_e
        0x67 -> :sswitch_f
        0x68 -> :sswitch_11
        0x69 -> :sswitch_15
        0x6a -> :sswitch_16
        0x6b -> :sswitch_1a
        0x6c -> :sswitch_17
        0x6d -> :sswitch_26
        0x6e -> :sswitch_1b
        0x6f -> :sswitch_1f
        0x70 -> :sswitch_1c
        0x71 -> :sswitch_1d
        0x72 -> :sswitch_1e
        0x73 -> :sswitch_20
        0x74 -> :sswitch_21
        0x75 -> :sswitch_22
        0x76 -> :sswitch_23
        0x77 -> :sswitch_25
        0x78 -> :sswitch_24
    .end sparse-switch
.end method

.method public static final b(I)I
    .locals 1
    .param p0, "resType"    # I

    .prologue
    .line 373
    invoke-static {p0}, Lnt;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const/4 p0, 0x1

    .line 376
    .end local p0    # "resType":I
    :cond_0
    return p0
.end method

.method private static c(I)Z
    .locals 1
    .param p0, "fileType"    # I

    .prologue
    .line 344
    packed-switch p0, :pswitch_data_0

    .line 367
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 365
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

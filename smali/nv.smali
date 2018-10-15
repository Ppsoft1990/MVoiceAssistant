.class public Lnv;
.super Ljava/lang/Object;
.source "DownloadConstants.java"


# direct methods
.method public static a(I)I
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 134
    sparse-switch p0, :sswitch_data_0

    .line 181
    const v0, 0x7f0c00d0

    .line 183
    .local v0, "resId":I
    :goto_0
    return v0

    .line 136
    .end local v0    # "resId":I
    :sswitch_0
    const v0, 0x7f0c00ce

    .line 137
    .restart local v0    # "resId":I
    goto :goto_0

    .line 139
    .end local v0    # "resId":I
    :sswitch_1
    const v0, 0x7f0c00cb

    .line 140
    .restart local v0    # "resId":I
    goto :goto_0

    .line 142
    .end local v0    # "resId":I
    :sswitch_2
    const v0, 0x7f0c00ca

    .line 143
    .restart local v0    # "resId":I
    goto :goto_0

    .line 145
    .end local v0    # "resId":I
    :sswitch_3
    const v0, 0x7f0c00cc

    .line 146
    .restart local v0    # "resId":I
    goto :goto_0

    .line 148
    .end local v0    # "resId":I
    :sswitch_4
    const v0, 0x7f0c00cd

    .line 149
    .restart local v0    # "resId":I
    goto :goto_0

    .line 151
    .end local v0    # "resId":I
    :sswitch_5
    const v0, 0x7f0c00c9

    .line 152
    .restart local v0    # "resId":I
    goto :goto_0

    .line 154
    .end local v0    # "resId":I
    :sswitch_6
    const v0, 0x7f0c00cf

    .line 155
    .restart local v0    # "resId":I
    goto :goto_0

    .line 172
    .end local v0    # "resId":I
    :sswitch_7
    const v0, 0x7f0c00c8

    .line 173
    .restart local v0    # "resId":I
    goto :goto_0

    .line 134
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc3ba5 -> :sswitch_7
        0xc3c09 -> :sswitch_6
        0xc3c14 -> :sswitch_1
        0xc3c15 -> :sswitch_2
        0xc3c16 -> :sswitch_3
        0xc3c17 -> :sswitch_4
        0xc3c18 -> :sswitch_5
    .end sparse-switch
.end method

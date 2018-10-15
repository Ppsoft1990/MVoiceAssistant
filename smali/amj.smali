.class public Lamj;
.super Ljava/lang/Object;
.source "PlaybackMode.java"


# direct methods
.method public static a()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public static a(I)I
    .locals 1
    .param p0, "currentMode"    # I

    .prologue
    const/4 v0, 0x1

    .line 29
    if-ltz p0, :cond_0

    if-le p0, v0, :cond_1

    .line 30
    :cond_0
    invoke-static {}, Lamj;->a()I

    move-result v0

    .line 44
    :goto_0
    :pswitch_0
    return v0

    .line 33
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 44
    invoke-static {}, Lamj;->a()I

    move-result v0

    goto :goto_0

    .line 37
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 48
    packed-switch p0, :pswitch_data_0

    .line 58
    const-string/jumbo v0, "\u987a\u5e8f\u64ad\u653e"

    :goto_0
    return-object v0

    .line 52
    :pswitch_0
    const-string/jumbo v0, "\u968f\u673a\u64ad\u653e"

    goto :goto_0

    .line 54
    :pswitch_1
    const-string/jumbo v0, "\u987a\u5e8f\u64ad\u653e"

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    const v0, 0x7f02032a

    .line 62
    packed-switch p0, :pswitch_data_0

    .line 68
    :goto_0
    :pswitch_0
    return v0

    .line 64
    :pswitch_1
    const v0, 0x7f02032b

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static d(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    const v0, 0x7f020148

    .line 72
    packed-switch p0, :pswitch_data_0

    .line 78
    :goto_0
    :pswitch_0
    return v0

    .line 76
    :pswitch_1
    const v0, 0x7f020142

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 82
    packed-switch p0, :pswitch_data_0

    .line 88
    const v0, 0x7f020148

    :goto_0
    return v0

    .line 84
    :pswitch_0
    const v0, 0x7f020149

    goto :goto_0

    .line 86
    :pswitch_1
    const v0, 0x7f020143

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public Lnw;
.super Ljava/lang/Object;
.source "DownloadStatus.java"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 31
    packed-switch p0, :pswitch_data_0

    .line 45
    const-string/jumbo v0, "status_unknown"

    :goto_0
    return-object v0

    .line 33
    :pswitch_0
    const-string/jumbo v0, "status_waiting"

    goto :goto_0

    .line 35
    :pswitch_1
    const-string/jumbo v0, "status_pendding"

    goto :goto_0

    .line 37
    :pswitch_2
    const-string/jumbo v0, "status_running"

    goto :goto_0

    .line 39
    :pswitch_3
    const-string/jumbo v0, "status_finished"

    goto :goto_0

    .line 41
    :pswitch_4
    const-string/jumbo v0, "status_stopped"

    goto :goto_0

    .line 43
    :pswitch_5
    const-string/jumbo v0, "status_error"

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.class public Lqf;
.super Ljava/lang/Object;
.source "ErrorCode.java"


# direct methods
.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorCode"    # I

    .prologue
    .line 54
    sparse-switch p1, :sswitch_data_0

    .line 78
    const-string/jumbo v0, "WoMusic_ErrorCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getErrorString undefine CODE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string/jumbo v0, "\u64ad\u653e\u51fa\u9519"

    :goto_0
    return-object v0

    .line 56
    :sswitch_0
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_0

    .line 58
    :sswitch_1
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_0

    .line 60
    :sswitch_2
    const-string/jumbo v0, "\u670d\u52a1\u5668\u65e0\u8d44\u6e90"

    goto :goto_0

    .line 62
    :sswitch_3
    const-string/jumbo v0, "\u7f51\u7edc\u8d85\u65f6"

    goto :goto_0

    .line 64
    :sswitch_4
    const-string/jumbo v0, "\u65e0\u6548URL"

    goto :goto_0

    .line 66
    :sswitch_5
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    goto :goto_0

    .line 68
    :sswitch_6
    const-string/jumbo v0, "SD\u5361\u5269\u4f59\u7a7a\u95f4\u4e0d\u8db3"

    goto :goto_0

    .line 70
    :sswitch_7
    const-string/jumbo v0, "\u672a\u53d1\u73b0SD\u5361\uff0c\u65e0\u6cd5\u4e0b\u8f7d\u6b4c\u66f2\u8d44\u6e90\uff01"

    goto :goto_0

    .line 72
    :sswitch_8
    const-string/jumbo v0, "\u6682\u65f6\u65e0\u6cd5\u83b7\u53d6\u5230\u60a8\u7684\u624b\u673a\u53f7\u7801\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_0

    .line 54
    nop

    :sswitch_data_0
    .sparse-switch
        0xc3564 -> :sswitch_0
        0xc3565 -> :sswitch_1
        0xc3566 -> :sswitch_2
        0xc3567 -> :sswitch_3
        0xc3568 -> :sswitch_4
        0xc3569 -> :sswitch_5
        0xc356f -> :sswitch_6
        0xc3570 -> :sswitch_7
        0x1312d01 -> :sswitch_8
    .end sparse-switch
.end method

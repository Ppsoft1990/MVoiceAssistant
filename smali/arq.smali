.class Larq;
.super Ljava/lang/Object;
.source "PluginTipConstants.java"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "tip":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 53
    :pswitch_0
    const-string/jumbo v0, "\u5b89\u88c5\u9519\u8bef"

    .line 57
    :goto_0
    return-object v0

    .line 32
    :pswitch_1
    const-string/jumbo v0, "\u63d2\u4ef6\u914d\u7f6e\u6587\u4ef6\u89e3\u6790\u9519\u8bef"

    .line 33
    goto :goto_0

    .line 35
    :pswitch_2
    const-string/jumbo v0, "\u63d2\u4ef6\u5b89\u88c5\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 36
    goto :goto_0

    .line 38
    :pswitch_3
    const-string/jumbo v0, "\u5b89\u88c5\u7a7a\u95f4\u4e0d\u8db3"

    .line 39
    goto :goto_0

    .line 41
    :pswitch_4
    const-string/jumbo v0, "\u6ca1\u6709SD\u5361"

    .line 42
    goto :goto_0

    .line 44
    :pswitch_5
    const-string/jumbo v0, "\u63d2\u4ef6\u914d\u7f6e\u6587\u4ef6\u89e3\u6790\u9519\u8bef"

    .line 45
    goto :goto_0

    .line 47
    :pswitch_6
    const-string/jumbo v0, "\u63d2\u4ef6\u7248\u672c\u6821\u9a8c\u9519\u8bef"

    .line 48
    goto :goto_0

    .line 50
    :pswitch_7
    const-string/jumbo v0, "\u5b89\u88c5\u89e3\u538b\u9519\u8bef"

    .line 51
    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x8002
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "tip":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 73
    const-string/jumbo v0, "\u63d2\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    .line 76
    :goto_0
    return-object v0

    .line 64
    :sswitch_0
    const-string/jumbo v0, "\u672a\u68c0\u6d4b\u5230SD\u5361"

    .line 65
    goto :goto_0

    .line 67
    :sswitch_1
    const-string/jumbo v0, "\u6ca1\u6709\u7f51\u7edc\u94fe\u63a5"

    .line 68
    goto :goto_0

    .line 70
    :sswitch_2
    const-string/jumbo v0, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3"

    .line 71
    goto :goto_0

    .line 62
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_1
        0xc3c09 -> :sswitch_0
        0xc3c0a -> :sswitch_2
    .end sparse-switch
.end method

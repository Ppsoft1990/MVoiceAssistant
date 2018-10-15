.class public Lpc;
.super Ljava/lang/Object;
.source "PermissionDefine.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lpc;->a:Ljava/util/HashMap;

    .line 70
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.CAMERA"

    const-string/jumbo v2, "\"\u76f8\u673a\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    const-string/jumbo v2, "\"\u901a\u8baf\u5f55\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    const-string/jumbo v2, "\"\u901a\u8baf\u5f55\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    const-string/jumbo v2, "\"\u901a\u8baf\u5f55\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string/jumbo v2, "\"\u4f4d\u7f6e\u4fe1\u606f\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string/jumbo v2, "\"\u4f4d\u7f6e\u4fe1\u606f\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    const-string/jumbo v2, "\"\u9ea6\u514b\u98ce\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v2, "\"\u7535\u8bdd\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.CALL_PHONE"

    const-string/jumbo v2, "\"\u7535\u8bdd\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    const-string/jumbo v2, "\"\u7535\u8bdd\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.WRITE_CALL_LOG"

    const-string/jumbo v2, "\"\u7535\u8bdd\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const-string/jumbo v2, "\"\u7535\u8bdd\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.USE_SIP"

    const-string/jumbo v2, "\"\u7535\u8bdd\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string/jumbo v2, "\"\u7535\u8bdd\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.BODY_SENSORS"

    const-string/jumbo v2, "\"\u4f20\u611f\u5668\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.SEND_SMS"

    const-string/jumbo v2, "\"\u77ed\u4fe1\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    const-string/jumbo v2, "\"\u77ed\u4fe1\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.RECEIVE_WAP_PUSH"

    const-string/jumbo v2, "\"\u77ed\u4fe1\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.RECEIVE_MMS"

    const-string/jumbo v2, "\"\u77ed\u4fe1\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string/jumbo v2, "\"\u5b58\u50a8\u7a7a\u95f4\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string/jumbo v2, "\"\u5b58\u50a8\u7a7a\u95f4\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-static {p0}, Lazz;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const-string/jumbo v3, ""

    .line 137
    :goto_0
    return-object v3

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl;

    .line 133
    .local v1, "item":Lpl;
    invoke-static {v1}, Lpc;->a(Lpl;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "tip":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 137
    .end local v1    # "item":Lpl;
    .end local v2    # "tip":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/util/IflyStringUtil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static a(Lpl;)Ljava/lang/String;
    .locals 2
    .param p0, "permissionEntity"    # Lpl;

    .prologue
    .line 117
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lpc;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Lpl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

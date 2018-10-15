.class public Labu;
.super Lwo;
.source "SmsOpLogHelper.java"


# static fields
.field private static b:Labu;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public static a(Landroid/content/Context;)Labu;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Labu;->b:Labu;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Labu;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Labu;-><init>(Landroid/content/Context;)V

    sput-object v0, Labu;->b:Labu;

    .line 28
    :cond_0
    sget-object v0, Labu;->b:Labu;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "opCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    .local p3, "smsLogParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 186
    const/4 p3, 0x0

    .line 208
    .end local p3    # "smsLogParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object p3

    .line 188
    .restart local p3    # "smsLogParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v0, "SC02049"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-static {}, Labv;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 191
    :cond_2
    const-string/jumbo v0, "SC02051"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const-string/jumbo v0, "SC02052"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const-string/jumbo v0, "FD01005"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "FD01007"

    .line 196
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "FD01008"

    .line 197
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "FD02005"

    .line 198
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "FD02011"

    .line 199
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :cond_3
    invoke-static {}, Labv;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;[ILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # [I
    .param p3, "opCode"    # Ljava/lang/String;
    .param p4, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 65
    if-nez p1, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v0, "smsLogParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "SC02014"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SC02015"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 70
    :cond_1
    const/4 v1, 0x0

    aget v1, p2, v1

    packed-switch v1, :pswitch_data_0

    .line 95
    const-string/jumbo v1, "sms_close_type_other"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :goto_1
    :pswitch_0
    const-string/jumbo v1, "SC02014"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 99
    aget v1, p2, v4

    if-eq v3, v1, :cond_2

    aget v1, p2, v4

    if-eqz v1, :cond_2

    .line 100
    const-string/jumbo v1, "sms_mic_click_time"

    aget v2, p2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_2
    aget v1, p2, v5

    if-eq v3, v1, :cond_3

    aget v1, p2, v5

    if-eqz v1, :cond_3

    .line 103
    const-string/jumbo v1, "sms_re_broadcast_time"

    aget v2, p2, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_3
    aget v1, p2, v6

    if-eq v3, v1, :cond_4

    aget v1, p2, v6

    if-eqz v1, :cond_4

    .line 106
    const-string/jumbo v1, "sms_stop_broadcast_time"

    aget v2, p2, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_4
    const/4 v1, 0x5

    aget v1, p2, v1

    if-eq v3, v1, :cond_5

    const/4 v1, 0x5

    aget v1, p2, v1

    if-eqz v1, :cond_5

    .line 109
    const-string/jumbo v1, "sms_open_auto_notify"

    const/4 v2, 0x5

    aget v2, p2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_5
    const/4 v1, 0x6

    aget v1, p2, v1

    if-eq v3, v1, :cond_6

    const/4 v1, 0x6

    aget v1, p2, v1

    if-eqz v1, :cond_6

    .line 112
    const-string/jumbo v1, "sms_close_auto_notify"

    const/4 v2, 0x6

    aget v2, p2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_6
    const/4 v1, 0x7

    aget v1, p2, v1

    if-eq v3, v1, :cond_7

    const/4 v1, 0x7

    aget v1, p2, v1

    if-eqz v1, :cond_7

    .line 115
    const-string/jumbo v1, "sms_open_setting_btn"

    const/4 v2, 0x7

    aget v2, p2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_7
    :goto_2
    invoke-static {}, Labv;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 74
    :pswitch_1
    const-string/jumbo v1, "sms_close_type_other"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 77
    :pswitch_2
    const-string/jumbo v1, "sms_close_type_click_close"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 80
    :pswitch_3
    const-string/jumbo v1, "sms_close_type_click_contact"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 83
    :pswitch_4
    const-string/jumbo v1, "sms_close_type_click_delete"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 86
    :pswitch_5
    const-string/jumbo v1, "sms_close_type_click_send"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 89
    :pswitch_6
    const-string/jumbo v1, "sms_close_type_click_call"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 92
    :pswitch_7
    const-string/jumbo v1, "sms_close_type_click_cancel"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 125
    :cond_8
    const-string/jumbo v1, "SC02015"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 126
    aget v1, p2, v7

    if-eq v3, v1, :cond_7

    aget v1, p2, v7

    if-eqz v1, :cond_7

    .line 127
    const-string/jumbo v1, "sms_mic_start_time"

    aget v2, p2, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 143
    :cond_9
    if-eqz p4, :cond_7

    .line 144
    const-string/jumbo v1, "FC01009"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 145
    const-string/jumbo v1, "1"

    invoke-virtual {v0, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 146
    :cond_a
    const-string/jumbo v1, "FC01010"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 147
    const-string/jumbo v1, "1"

    invoke-virtual {v0, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 148
    :cond_b
    const-string/jumbo v1, "FC01014"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 149
    const-string/jumbo v1, "1"

    invoke-virtual {v0, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 70
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "opCode"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string/jumbo v0, "SmsOpLogHelper"

    const-string/jumbo v1, "appendManualOpLog"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Labv;->a()J

    move-result-wide v2

    .line 55
    .local v2, "createTime":J
    const-string/jumbo v4, "success"

    iget-object v0, p0, Labu;->a:Landroid/content/Context;

    .line 56
    invoke-static {}, Labv;->c()[I

    move-result-object v1

    const/4 v5, 0x0

    .line 55
    invoke-direct {p0, v0, v1, p1, v5}, Labu;->a(Landroid/content/Context;[ILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Labu;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 57
    invoke-static {p1}, Labv;->a(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 6
    .param p1, "opCode"    # Ljava/lang/String;
    .param p2, "install"    # I
    .param p3, "recognition"    # I

    .prologue
    .line 239
    const-string/jumbo v0, "SmsOpLogHelper"

    const-string/jumbo v1, "appendHMTOpLog"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {}, Labv;->a()J

    move-result-wide v2

    .line 241
    .local v2, "createTime":J
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v5, "smsLogParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "digitserver"

    .line 243
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 246
    const-string/jumbo v0, "tss_icc_appear"

    .line 247
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_0
    const-string/jumbo v4, "success"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Labu;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 253
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "opCode"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string/jumbo v0, "SmsOpLogHelper"

    const-string/jumbo v1, "appendManualOpLog"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Labv;->a()J

    move-result-wide v2

    .line 42
    .local v2, "createTime":J
    if-eqz p2, :cond_0

    .line 43
    const-string/jumbo v4, "success"

    iget-object v0, p0, Labu;->a:Landroid/content/Context;

    .line 44
    invoke-static {}, Labv;->c()[I

    move-result-object v1

    .line 43
    invoke-direct {p0, v0, v1, p1, p2}, Labu;->a(Landroid/content/Context;[ILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Labu;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 49
    :goto_0
    invoke-static {p1}, Labv;->a(Ljava/lang/String;)V

    .line 50
    return-void

    .line 46
    :cond_0
    const-string/jumbo v4, "success"

    iget-object v0, p0, Labu;->a:Landroid/content/Context;

    .line 47
    invoke-static {}, Labv;->c()[I

    move-result-object v1

    const/4 v5, 0x0

    .line 46
    invoke-direct {p0, v0, v1, p1, v5}, Labu;->a(Landroid/content/Context;[ILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Labu;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "opCode"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "callsmsSetting"    # I

    .prologue
    .line 218
    const-string/jumbo v0, "SmsOpLogHelper"

    const-string/jumbo v1, "appendGreyOpLog"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {}, Labv;->a()J

    move-result-wide v2

    .line 220
    .local v2, "createTime":J
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v5, "smsLogParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string/jumbo v4, "success"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Labu;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 225
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "opCode"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string/jumbo v0, "SmsOpLogHelper"

    const-string/jumbo v1, "appendOpLog"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Labv;->a()J

    move-result-wide v2

    .line 166
    .local v2, "createTime":J
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v5, "smsLogParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 168
    const-string/jumbo v0, "1"

    invoke-virtual {v5, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    iget-object v0, p0, Labu;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p1, v5}, Labu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v5

    .line 173
    const-string/jumbo v4, "success"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Labu;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 176
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "opCode"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 263
    const-string/jumbo v0, "SmsOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "appendOpLogEx\uff1a "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {}, Labv;->a()J

    move-result-wide v2

    .line 265
    .local v2, "createTime":J
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 267
    .local v5, "smsLogParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "FD01024"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    add-int/lit8 v0, p3, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :goto_0
    const-string/jumbo v4, "success"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Labu;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 277
    return-void

    .line 271
    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

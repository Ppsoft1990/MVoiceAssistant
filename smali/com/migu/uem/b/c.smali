.class public final Lcom/migu/uem/b/c;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/migu/uem/a/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "\u6536\u5230\u6765\u81ea\u5b50\u8fdb\u7a0b\u7684\u5e7f\u64ad"

    invoke-static {v3}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    const-string/jumbo v3, "com.migu.uem.noti_to_main"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_4

    const-string/jumbo v0, "data_int"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/migu/uem/statistics/page/b;->a()Lcom/migu/uem/statistics/page/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/migu/uem/statistics/page/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/migu/uem/statistics/page/b;->a()Lcom/migu/uem/statistics/page/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/migu/uem/statistics/page/b;->b(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/migu/uem/statistics/page/b;->a()Lcom/migu/uem/statistics/page/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/migu/uem/statistics/page/b;->b(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "data_int2"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    :cond_2
    new-instance v2, Lcom/migu/uem/c/d;

    invoke-direct {v2}, Lcom/migu/uem/c/d;-><init>()V

    aget v1, v0, v1

    invoke-virtual {v2, p1, v1}, Lcom/migu/uem/c/d;->b(Landroid/content/Context;I)V

    new-instance v1, Lcom/migu/uem/c/d;

    invoke-direct {v1}, Lcom/migu/uem/c/d;-><init>()V

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {v1, p1, v2}, Lcom/migu/uem/c/d;->c(Landroid/content/Context;I)V

    new-instance v1, Lcom/migu/uem/c/d;

    invoke-direct {v1}, Lcom/migu/uem/c/d;-><init>()V

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, p1, v2}, Lcom/migu/uem/c/d;->d(Landroid/content/Context;I)V

    new-instance v1, Lcom/migu/uem/c/d;

    invoke-direct {v1}, Lcom/migu/uem/c/d;-><init>()V

    const/4 v2, 0x3

    aget v2, v0, v2

    invoke-virtual {v1, p1, v2}, Lcom/migu/uem/c/d;->e(Landroid/content/Context;I)V

    new-instance v1, Lcom/migu/uem/c/d;

    invoke-direct {v1}, Lcom/migu/uem/c/d;-><init>()V

    const/4 v2, 0x4

    aget v0, v0, v2

    invoke-virtual {v1, p1, v0}, Lcom/migu/uem/c/d;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "data_int2"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :cond_3
    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v1

    iput-object v0, v1, Lcom/migu/uem/comm/a;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0xca -> :sswitch_1
        0x12f -> :sswitch_2
        0x194 -> :sswitch_3
    .end sparse-switch

    :array_0
    .array-data 4
        0x1
        0x1
        0x1e
        0x1
        0x1
    .end array-data
.end method

.class public final Lcom/migu/uem/b/d;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "com.migu.uem.noti_to_remote"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "noti_romote_key_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x44a

    if-ne v2, v1, :cond_2

    const-string/jumbo v0, "APP \u6253\u5f00"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/migu/uem/a/g;->a()Lcom/migu/uem/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/migu/uem/a/g;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x4ae

    if-ne v2, v1, :cond_3

    invoke-static {}, Lcom/migu/uem/a/g;->a()Lcom/migu/uem/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/migu/uem/a/g;->f(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x512

    if-ne v2, v1, :cond_4

    invoke-static {}, Lcom/migu/uem/a/g;->a()Lcom/migu/uem/a/g;

    const-string/jumbo v0, "3"

    invoke-static {p1, v0}, Lcom/migu/uem/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x576

    if-ne v2, v1, :cond_5

    invoke-static {}, Lcom/migu/uem/a/g;->a()Lcom/migu/uem/a/g;

    const-string/jumbo v0, "2"

    invoke-static {p1, v0}, Lcom/migu/uem/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v2, 0x5da

    if-ne v2, v1, :cond_6

    const-string/jumbo v1, "data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v2, "data_deeplink"

    invoke-virtual {v1, v2, v0}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const/16 v2, 0x63e

    if-ne v2, v1, :cond_0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v2, "data_deeplink_session"

    invoke-virtual {v1, v2, v0}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "data_deeplink_session"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

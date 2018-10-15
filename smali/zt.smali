.class public Lzt;
.super Ljava/lang/Object;
.source "CallBusinessStaticUtlsForHandler.java"


# direct methods
.method public static a()V
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Labb;->f()Ladp;

    move-result-object v1

    .line 59
    .local v1, "mDialSpeechTipsView":Ladp;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ladp;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {v1}, Ladp;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CallBusinessHandler"

    const-string/jumbo v3, "dismissDialSpeechTip error!"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pPhoneNumber"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "model":Ljava/lang/String;
    const/4 v1, 0x0

    .line 31
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "Coolpad 8089"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.INSERT"

    const-string/jumbo v4, "content://com.android.contacts"

    .line 33
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "contacts"

    .line 32
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "vnd.android.cursor.dir/contact"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    :goto_0
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const/high16 v3, 0x34000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_1
    return-void

    .line 36
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "CallBusinessHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.class public Lql$a;
.super Ljava/lang/Object;
.source "NovelDetailPageBusinessAdapter.java"

# interfaces
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lql;


# direct methods
.method public constructor <init>(Lql;)V
    .locals 0
    .param p1, "this$0"    # Lql;

    .prologue
    .line 434
    iput-object p1, p0, Lql$a;->a:Lql;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Ljava/lang/String;

    .prologue
    .line 437
    const-string/jumbo v4, "NovelDetailPageBusinessAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exec start, aciton is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ,args is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :try_start_0
    const-string/jumbo v4, "novelContent"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 441
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "message":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 444
    iget-object v4, p0, Lql$a;->a:Lql;

    invoke-static {v4, v2}, Lql;->b(Lql;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    iget-object v4, p0, Lql$a;->a:Lql;

    invoke-static {v4}, Lql;->h(Lql;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 446
    .local v3, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 447
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 448
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v4, "content"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 449
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 450
    iget-object v4, p0, Lql$a;->a:Lql;

    invoke-static {v4}, Lql;->h(Lql;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    :goto_1
    return-object v4

    .line 453
    .restart local v2    # "message":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Lql;->d(Z)Z

    .line 454
    const-string/jumbo v4, "NovelDetailPageBusinessAdapter"

    const-string/jumbo v5, "novelContent, set isNeedSpeakAuto false"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 467
    .end local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "NovelDetailPageBusinessAdapter"

    const-string/jumbo v5, "exec error"

    invoke-static {v4, v5, v1}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "JSON error"

    const-string/jumbo v6, ""

    invoke-direct {v4, v5, v6}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 456
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    const-string/jumbo v4, "isNeedSpeakAuto"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 457
    const-string/jumbo v4, "NovelDetailPageBusinessAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isNeedSpeakAuto is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lql;->p()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {}, Lql;->p()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 460
    const/4 v4, 0x0

    invoke-static {v4}, Lql;->d(Z)Z

    .line 461
    const-string/jumbo v4, "NovelDetailPageBusinessAdapter"

    const-string/jumbo v5, "isNeedSpeakAuto, set isNeedSpeakAuto false"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "OK"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    .line 464
    :cond_3
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "OK"

    invoke-static {}, Lql;->p()Z

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 477
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 482
    return-void
.end method

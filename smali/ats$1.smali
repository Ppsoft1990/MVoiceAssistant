.class Lats$1;
.super Landroid/content/BroadcastReceiver;
.source "NoticeActionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lats;


# direct methods
.method constructor <init>(Lats;)V
    .locals 0
    .param p1, "this$0"    # Lats;

    .prologue
    .line 75
    iput-object p1, p0, Lats$1;->a:Lats;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "NoticeActionHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive | action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string/jumbo v6, "EXTRA_USER_MODE"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 86
    .local v5, "userMode":I
    const-string/jumbo v6, "NoticeActionHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive | userMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string/jumbo v6, "EXTRA_NOTICE_BUSINESS_DATA"

    .line 90
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 91
    .local v1, "businessMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "NoticeActionHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive | businessMap= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-ne v9, v5, :cond_0

    .line 95
    iget-object v6, p0, Lats$1;->a:Lats;

    invoke-static {v6}, Lats;->a(Lats;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Laty;->a(Landroid/content/Context;I)Latw;

    move-result-object v6

    .line 96
    invoke-virtual {v6, v0, v1}, Latw;->a(Ljava/lang/String;Ljava/util/Map;)Z

    .line 120
    :goto_0
    return-void

    .line 97
    :cond_0
    if-nez v5, :cond_3

    .line 98
    const-string/jumbo v6, "EXTRA_PREFER_LAUNCH_ACTIVITY"

    .line 99
    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 101
    .local v4, "isNeedLaunchHome":Z
    const/4 v3, 0x0

    .line 102
    .local v3, "hasHandled":Z
    if-nez v4, :cond_1

    .line 103
    iget-object v6, p0, Lats$1;->a:Lats;

    .line 104
    invoke-static {v6}, Lats;->a(Lats;)Landroid/content/Context;

    move-result-object v6

    .line 103
    invoke-static {v6, v5}, Laty;->a(Landroid/content/Context;I)Latw;

    move-result-object v6

    .line 104
    invoke-virtual {v6, v0, v1}, Latw;->a(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v3

    .line 108
    :cond_1
    if-eqz v3, :cond_2

    .line 109
    const-string/jumbo v6, "NoticeActionHelper"

    const-string/jumbo v7, "user action HAS handled"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_2
    :try_start_0
    iget-object v6, p0, Lats$1;->a:Lats;

    invoke-static {v6, v1, v0, v5}, Lats;->a(Lats;Ljava/io/Serializable;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "NoticeActionHelper"

    const-string/jumbo v7, "handle notice broadcast exception"

    invoke-static {v6, v7, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 118
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "hasHandled":Z
    .end local v4    # "isNeedLaunchHome":Z
    :cond_3
    const-string/jumbo v6, "NoticeActionHelper"

    const-string/jumbo v7, "user mode **IS NOT** correct"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class Labk$1;
.super Ljava/lang/Object;
.source "BlessContentChangeBusiness.java"

# interfaces
.implements Lwd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Labk;


# direct methods
.method constructor <init>(Labk;)V
    .locals 0
    .param p1, "this$0"    # Labk;

    .prologue
    .line 23
    iput-object p1, p0, Labk$1;->a:Labk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJI)V
    .locals 3
    .param p1, "requestType"    # I
    .param p2, "requestId"    # J
    .param p4, "errorCode"    # I

    .prologue
    .line 58
    invoke-static {}, Labk;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResult(), errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Labk$1;->a:Labk;

    invoke-static {v0}, Labk;->a(Labk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Labk$1;->a:Labk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Labk;->a(Labk;Z)Z

    .line 61
    iget-object v0, p0, Labk$1;->a:Labk;

    invoke-static {v0}, Labk;->b(Labk;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Labk$1;->a:Labk;

    invoke-static {v0}, Labk;->c(Labk;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_SMS_BLESS_CONTENT_CHANGE_FAIL"

    .line 63
    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 65
    :cond_0
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lwa;)V
    .locals 8
    .param p1, "result"    # Lwa;

    .prologue
    .line 26
    invoke-static {}, Labk;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onResult(), result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v4, p0, Labk$1;->a:Labk;

    invoke-static {v4}, Labk;->a(Labk;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 28
    :try_start_0
    iget-object v4, p0, Labk$1;->a:Labk;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Labk;->a(Labk;Z)Z

    .line 29
    move-object v0, p1

    check-cast v0, Labn;

    move-object v2, v0

    .line 30
    .local v2, "blessContentChangeResult":Labn;
    invoke-virtual {v2}, Labn;->b()Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "blessId":Ljava/lang/String;
    invoke-static {}, Labk;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResult(), blessId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    if-eqz v3, :cond_0

    .line 33
    invoke-static {v3}, Labk;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    :cond_0
    invoke-virtual {v2}, Labn;->c()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "blessContent":Ljava/lang/String;
    invoke-static {}, Labk;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResult(), blessContent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    if-eqz v1, :cond_1

    .line 39
    iget-object v4, p0, Labk$1;->a:Labk;

    invoke-static {v4}, Labk;->b(Labk;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 40
    invoke-virtual {v2, v1}, Labn;->a(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2}, Labn;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Labb;->a(Ljava/util/ArrayList;)V

    .line 48
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const-string/jumbo v4, ""

    if-ne v3, v4, :cond_4

    const-string/jumbo v4, ""

    if-ne v1, v4, :cond_4

    .line 49
    :cond_3
    iget-object v4, p0, Labk$1;->a:Labk;

    invoke-static {v4}, Labk;->c(Labk;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v4

    const-string/jumbo v6, "com.iflytek.cmcc.ACTION_SMS_BLESS_CONTENT_CHANGE_FAIL"

    .line 50
    invoke-virtual {v4, v6}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 52
    :cond_4
    monitor-exit v5

    .line 53
    return-void

    .line 43
    :cond_5
    invoke-virtual {v2}, Labn;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Labb;->a(Ljava/util/ArrayList;)V

    .line 44
    iget-object v4, p0, Labk$1;->a:Labk;

    invoke-static {v4}, Labk;->c(Labk;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v4

    const-string/jumbo v6, "com.iflytek.cmcc.ACTION_SMS_BLESS_CONTENT_CHANGE"

    const-string/jumbo v7, "com.iflytek.cmcc.EXTRA_BLESSCONTENT"

    .line 45
    invoke-virtual {v4, v6, v7, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v1    # "blessContent":Ljava/lang/String;
    .end local v2    # "blessContentChangeResult":Labn;
    .end local v3    # "blessId":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

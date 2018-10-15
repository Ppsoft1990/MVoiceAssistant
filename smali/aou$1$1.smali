.class Laou$1$1;
.super Ljava/util/TimerTask;
.source "SMSCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laou$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laou$1;


# direct methods
.method constructor <init>(Laou$1;)V
    .locals 0
    .param p1, "this$1"    # Laou$1;

    .prologue
    .line 116
    iput-object p1, p0, Laou$1$1;->a:Laou$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 119
    iget-object v3, p0, Laou$1$1;->a:Laou$1;

    iget-object v3, v3, Laou$1;->a:Laou;

    invoke-static {v3}, Laou;->c(Laou;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    .line 120
    const/4 v1, 0x1

    .line 121
    .local v1, "success":Z
    :try_start_0
    iget-object v3, p0, Laou$1$1;->a:Laou$1;

    iget-object v3, v3, Laou$1;->a:Laou;

    invoke-static {v3}, Laou;->c(Laou;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Laou$1$1;->a:Laou$1;

    iget-object v3, v3, Laou$1;->a:Laou;

    invoke-virtual {v3}, Laou;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "mUploadResult empty"

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    .line 135
    :goto_0
    iget-object v3, p0, Laou$1$1;->a:Laou$1;

    iget-object v3, v3, Laou$1;->a:Laou;

    invoke-virtual {v3}, Laou;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6700\u7ec8\u4e0a\u4f20\u7ed3\u679c\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v3, p0, Laou$1$1;->a:Laou$1;

    iget-object v3, v3, Laou$1;->a:Laou;

    invoke-static {v3}, Laou;->d(Laou;)Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    move-result-object v3

    sget-object v5, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->TELEPHONE_BILL:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    if-ne v3, v5, :cond_3

    .line 137
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v5, "com.iflytek.cmccIFLY_IS_TELEPHONE_BILL_SMS_COLLECTED"

    invoke-virtual {v3, v5, v1}, Lil;->a(Ljava/lang/String;Z)V

    .line 141
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v3, p0, Laou$1$1;->a:Laou$1;

    iget-object v3, v3, Laou$1;->a:Laou;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Laou;->a(Laou;Z)Z

    .line 143
    iget-object v3, p0, Laou$1$1;->a:Laou$1;

    iget-object v3, v3, Laou$1;->a:Laou;

    invoke-virtual {v3}, Laou;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IsScheduleRunning:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Laou$1$1;->a:Laou$1;

    iget-object v5, v5, Laou$1;->a:Laou;

    invoke-static {v5}, Laou;->a(Laou;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v3, p0, Laou$1$1;->a:Laou$1;

    iget-object v3, v3, Laou$1;->a:Laou;

    invoke-virtual {v3}, Laou;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "<------\u6536\u96c6\u5168\u90e8\u7ed3\u675f------>"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 125
    :cond_0
    :try_start_1
    iget-object v3, p0, Laou$1$1;->a:Laou$1;

    iget-object v3, v3, Laou$1;->a:Laou;

    invoke-static {v3}, Laou;->c(Laou;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Laot;Laou$a;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laou$a;

    .line 127
    .local v2, "val":Laou$a;
    invoke-virtual {v2}, Laou$a;->a()Z

    move-result v5

    if-nez v5, :cond_1

    .line 128
    iget-object v3, p0, Laou$1$1;->a:Laou$1;

    iget-object v3, v3, Laou$1;->a:Laou;

    invoke-virtual {v3}, Laou;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "one of is failed!"

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, 0x0

    .line 133
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Laot;Laou$a;>;"
    .end local v2    # "val":Laou$a;
    :cond_2
    iget-object v3, p0, Laou$1$1;->a:Laou$1;

    iget-object v3, v3, Laou$1;->a:Laou;

    invoke-static {v3}, Laou;->c(Laou;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto/16 :goto_0

    .line 141
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 139
    :cond_3
    :try_start_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v5, "com.iflytek.cmccIFLY_IS_DATE_FLOW_SMS_COLLECTED"

    invoke-virtual {v3, v5, v1}, Lil;->a(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

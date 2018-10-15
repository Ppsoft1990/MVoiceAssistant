.class public Latq;
.super Ljava/lang/Object;
.source "AlarmShowManager.java"


# static fields
.field private static b:Latq;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Latq;->a:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;)Latq;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Latq;->b:Latq;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Latq;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Latq;->b:Latq;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Latq;

    invoke-direct {v0, p0}, Latq;-><init>(Landroid/content/Context;)V

    sput-object v0, Latq;->b:Latq;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Latq;->b:Latq;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/iflytek/viafly/push/data/entities/MessageType;)V
    .locals 2
    .param p1, "type"    # Lcom/iflytek/viafly/push/data/entities/MessageType;

    .prologue
    .line 65
    iget-object v1, p0, Latq;->a:Landroid/content/Context;

    .line 66
    invoke-static {v1, p1}, Latv;->a(Landroid/content/Context;Lcom/iflytek/viafly/push/data/entities/MessageType;)Latu;

    move-result-object v0

    .line 67
    .local v0, "helper":Latu;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Latu;->a()V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 73
    invoke-static {}, Lcom/iflytek/viafly/push/data/entities/MessageType;->values()[Lcom/iflytek/viafly/push/data/entities/MessageType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 74
    .local v0, "type":Lcom/iflytek/viafly/push/data/entities/MessageType;
    invoke-static {v0}, Lcom/iflytek/viafly/push/data/entities/MessageType;->isCommon(Lcom/iflytek/viafly/push/data/entities/MessageType;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    invoke-direct {p0, v0}, Latq;->a(Lcom/iflytek/viafly/push/data/entities/MessageType;)V

    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "type":Lcom/iflytek/viafly/push/data/entities/MessageType;
    :cond_1
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->common:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-direct {p0, v1}, Latq;->a(Lcom/iflytek/viafly/push/data/entities/MessageType;)V

    .line 79
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string/jumbo v3, "AlarmShowManager"

    const-string/jumbo v4, "handleShowAlarm()"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v3, p0, Latq;->a:Landroid/content/Context;

    invoke-static {v3}, Latf;->b(Landroid/content/Context;)Latf;

    move-result-object v3

    invoke-virtual {v3, p1}, Latf;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 48
    .local v1, "noticeItem":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    if-eqz v1, :cond_0

    .line 49
    invoke-static {v1}, Laue;->b(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getTypeId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;->valueOfValue(Ljava/lang/String;)Lcom/iflytek/viafly/push/data/entities/MessageType;

    move-result-object v2

    .line 51
    .local v2, "type":Lcom/iflytek/viafly/push/data/entities/MessageType;
    iget-object v3, p0, Latq;->a:Landroid/content/Context;

    .line 52
    invoke-static {v3, v2}, Latv;->a(Landroid/content/Context;Lcom/iflytek/viafly/push/data/entities/MessageType;)Latu;

    move-result-object v0

    .line 53
    .local v0, "helper":Latu;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, v1}, Latu;->d(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V

    goto :goto_0
.end method

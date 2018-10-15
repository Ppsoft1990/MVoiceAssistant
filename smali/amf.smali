.class public Lamf;
.super Ljava/lang/Object;
.source "BookCloseHelper.java"


# static fields
.field private static f:Lamf;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field private final d:Ljava/lang/String;

.field private final e:I

.field private g:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "BookCloseHelper"

    iput-object v0, p0, Lamf;->d:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lamf;->e:I

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lamf;->a:I

    .line 25
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lamf;->b:J

    .line 80
    new-instance v0, Lamf$1;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lamf$1;-><init>(Lamf;Landroid/os/Looper;)V

    iput-object v0, p0, Lamf;->g:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method public static a()Lamf;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lamf;->f:Lamf;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lamf;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lamf;->f:Lamf;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lamf;

    invoke-direct {v0}, Lamf;-><init>()V

    sput-object v0, Lamf;->f:Lamf;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lamf;->f:Lamf;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 7
    .param p1, "time"    # J

    .prologue
    const/16 v6, 0xa

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lamf;->b()I

    move-result v4

    if-nez v4, :cond_0

    .line 107
    const-string/jumbo v4, "\u64ad\u5b8c\u5f53\u524d\u540e\uff0c\u5c06\u81ea\u52a8\u6682\u505c\u6b63\u5728\u64ad\u653e\u7684\u542c\u4e66"

    .line 124
    :goto_0
    return-object v4

    .line 109
    :cond_0
    const-string/jumbo v0, "\u540e,\u5c06\u81ea\u52a8\u6682\u505c\u6b63\u5728\u64ad\u653e\u7684\u542c\u4e66"

    .line 110
    .local v0, "defaultTail":Ljava/lang/String;
    const-wide/16 v4, 0x3e8

    div-long/2addr p1, v4

    .line 111
    long-to-int v4, p1

    rem-int/lit8 v3, v4, 0x3c

    .line 112
    .local v3, "second":I
    long-to-int v4, p1

    div-int/lit8 v2, v4, 0x3c

    .line 113
    .local v2, "minute":I
    if-ge v3, v6, :cond_1

    if-ge v2, v6, :cond_1

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u5206"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u79d2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 115
    :cond_1
    if-ge v3, v6, :cond_2

    if-lt v2, v6, :cond_2

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u5206"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u79d2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 117
    :cond_2
    if-lt v3, v6, :cond_3

    if-ge v2, v6, :cond_3

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u5206"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u79d2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 120
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u5206"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u79d2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 122
    .end local v0    # "defaultTail":Ljava/lang/String;
    .end local v2    # "minute":I
    .end local v3    # "second":I
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BookCloseHelper"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const-string/jumbo v4, "0\u52060\u79d2"

    goto/16 :goto_0
.end method

.method public a(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    .line 60
    :try_start_0
    iput p1, p0, Lamf;->a:I

    .line 61
    const-string/jumbo v2, "BookCloseHelper"

    const-string/jumbo v3, "remove stop play later:"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lamf;->g:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 64
    iget v2, p0, Lamf;->a:I

    if-nez v2, :cond_0

    .line 65
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lamv;

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lamf;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lamv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 78
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v2, -0x1

    iget v3, p0, Lamf;->a:I

    if-eq v2, v3, :cond_1

    .line 67
    invoke-virtual {p0}, Lamf;->d()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lamf;->a:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamu;

    .line 68
    .local v0, "bookCloseModel":Lamu;
    invoke-virtual {v0}, Lamu;->b()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lamf;->b:J

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lamf;->c:J

    .line 70
    const-string/jumbo v2, "BookCloseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop play later:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lamf;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lamf;->g:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v0    # "bookCloseModel":Lamu;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BookCloseHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lamv;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lamv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lamf;->a:I

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lamf;->a:I

    .line 52
    iget-object v0, p0, Lamf;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lamv;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Lamv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lamu;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 130
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v6, "bookCloseModels":Ljava/util/List;, "Ljava/util/List<Lamu;>;"
    new-instance v0, Lamu;

    const-string/jumbo v7, "\u64ad\u5b8c\u5f53\u524d\u540e"

    invoke-direct {v0, v8, v7, v8}, Lamu;-><init>(ILjava/lang/String;I)V

    .line 132
    .local v0, "bookCloseModel0":Lamu;
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v1, Lamu;

    const/4 v7, 0x1

    const-string/jumbo v8, "10\u5206\u949f\u540e"

    const/16 v9, 0xa

    invoke-direct {v1, v7, v8, v9}, Lamu;-><init>(ILjava/lang/String;I)V

    .line 135
    .local v1, "bookCloseModel1":Lamu;
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v2, Lamu;

    const/4 v7, 0x2

    const-string/jumbo v8, "20\u5206\u949f\u540e"

    const/16 v9, 0x14

    invoke-direct {v2, v7, v8, v9}, Lamu;-><init>(ILjava/lang/String;I)V

    .line 138
    .local v2, "bookCloseModel2":Lamu;
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v3, Lamu;

    const/4 v7, 0x3

    const-string/jumbo v8, "30\u5206\u949f\u540e"

    const/16 v9, 0x1e

    invoke-direct {v3, v7, v8, v9}, Lamu;-><init>(ILjava/lang/String;I)V

    .line 141
    .local v3, "bookCloseModel3":Lamu;
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v4, Lamu;

    const/4 v7, 0x4

    const-string/jumbo v8, "60\u5206\u949f\u540e"

    const/16 v9, 0x3c

    invoke-direct {v4, v7, v8, v9}, Lamu;-><init>(ILjava/lang/String;I)V

    .line 144
    .local v4, "bookCloseModel4":Lamu;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v5, Lamu;

    const/4 v7, 0x5

    const-string/jumbo v8, "90\u5206\u949f\u540e"

    const/16 v9, 0x5a

    invoke-direct {v5, v7, v8, v9}, Lamu;-><init>(ILjava/lang/String;I)V

    .line 147
    .local v5, "bookCloseModel5":Lamu;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-object v6
.end method

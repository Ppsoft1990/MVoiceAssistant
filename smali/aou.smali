.class public Laou;
.super Ljava/lang/Object;
.source "SMSCollector.java"

# interfaces
.implements Lhr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laou$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/util/Timer;

.field private c:Ljava/lang/String;

.field private d:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

.field private volatile e:Z

.field private f:Landroid/content/Context;

.field private volatile g:Z

.field private h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Laor;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Laot;",
            "Laou$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Laou;->e:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Laou;->f:Landroid/content/Context;

    .line 40
    iput-boolean v1, p0, Laou;->g:Z

    .line 41
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Laou;->h:Ljava/util/Queue;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laou;->i:Ljava/util/Map;

    .line 71
    iput-object p1, p0, Laou;->f:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Laou;->d:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    .line 73
    return-void
.end method

.method private a(Laor;)V
    .locals 5
    .param p1, "data"    # Laor;

    .prologue
    .line 155
    sget-object v3, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->TELEPHONE_BILL:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    iget-object v4, p0, Laou;->d:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, "1050"

    .line 156
    .local v1, "cParam":Ljava/lang/String;
    :goto_0
    new-instance v0, Laou$a;

    invoke-direct {v0, p0}, Laou$a;-><init>(Laou;)V

    .line 157
    .local v0, "businessResultListener":Laou$a;
    new-instance v2, Laot;

    iget-object v3, p0, Laou;->f:Landroid/content/Context;

    invoke-direct {v2, v1, v3, v0}, Laot;-><init>(Ljava/lang/String;Landroid/content/Context;Lwd;)V

    .line 158
    .local v2, "smsUploader":Laot;
    invoke-virtual {v2, p1}, Laot;->a(Laor;)J

    .line 159
    iget-object v4, p0, Laou;->i:Ljava/util/Map;

    monitor-enter v4

    .line 160
    :try_start_0
    iget-object v3, p0, Laou;->i:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    return-void

    .line 155
    .end local v0    # "businessResultListener":Laou$a;
    .end local v1    # "cParam":Ljava/lang/String;
    .end local v2    # "smsUploader":Laot;
    :cond_0
    const-string/jumbo v1, "1051"

    goto :goto_0

    .line 161
    .restart local v0    # "businessResultListener":Laou$a;
    .restart local v1    # "cParam":Ljava/lang/String;
    .restart local v2    # "smsUploader":Laot;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static synthetic a(Laou;Laor;)V
    .locals 0
    .param p0, "x0"    # Laou;
    .param p1, "x1"    # Laor;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Laou;->a(Laor;)V

    return-void
.end method

.method static synthetic a(Laou;)Z
    .locals 1
    .param p0, "x0"    # Laou;

    .prologue
    .line 29
    iget-boolean v0, p0, Laou;->g:Z

    return v0
.end method

.method static synthetic a(Laou;Z)Z
    .locals 0
    .param p0, "x0"    # Laou;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Laou;->g:Z

    return p1
.end method

.method static synthetic b(Laou;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Laou;

    .prologue
    .line 29
    iget-object v0, p0, Laou;->h:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic c(Laou;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Laou;

    .prologue
    .line 29
    iget-object v0, p0, Laou;->i:Ljava/util/Map;

    return-object v0
.end method

.method private c(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 12
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 183
    iget-object v10, p0, Laou;->h:Ljava/util/Queue;

    monitor-enter v10

    .line 184
    :try_start_0
    iget-object v0, p0, Laou;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laor;

    .line 185
    .local v9, "data":Laor;
    invoke-virtual {v9}, Laor;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p0}, Laou;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u5df2\u6709\u76f8\u540c\u5185\u5bb9\u77ed\u4fe1,\u4e22\u5f03!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    monitor-exit v10

    .line 202
    .end local v9    # "data":Laor;
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Laou;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laor;

    .line 191
    .restart local v9    # "data":Laor;
    invoke-virtual {v9}, Laor;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Laor;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "==iflytek=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, "body":Ljava/lang/String;
    invoke-virtual {v9, v8}, Laor;->a(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Laou;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6765\u81ea\u540c\u4e00\u53f7\u7801:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\u5408\u5e76!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    monitor-exit v10

    goto :goto_0

    .line 199
    .end local v8    # "body":Ljava/lang/String;
    .end local v9    # "data":Laor;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 198
    :cond_3
    :try_start_1
    iget-object v11, p0, Laou;->h:Ljava/util/Queue;

    new-instance v0, Laor;

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getBody()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laou;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Laou;->a:J

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getDate()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Laor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-interface {v11, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 199
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-virtual {p0}, Laou;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Add a new SMSCollectData."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic d(Laou;)Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;
    .locals 1
    .param p0, "x0"    # Laou;

    .prologue
    .line 29
    iget-object v0, p0, Laou;->d:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    return-object v0
.end method

.method private d(Lcom/iflytek/base/mms/entities/SmsItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 220
    invoke-virtual {p0}, Laou;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "filterSMS"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-nez p1, :cond_0

    .line 237
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getDate()J

    move-result-wide v0

    invoke-virtual {p0}, Laou;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 226
    invoke-virtual {p0}, Laou;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u8d85\u8fc7\u4e24\u5206\u949f!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    invoke-virtual {p0}, Laou;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u624b\u673a\u53f7\u7801!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic e(Laou;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Laou;

    .prologue
    .line 29
    iget-object v0, p0, Laou;->b:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SMSCollector_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laou;->d:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(J)V
    .locals 1
    .param p1, "mSendTime"    # J

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Laou;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 2
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 259
    invoke-virtual {p0}, Laou;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u77ed\u4fe1\u53d1\u9001\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laou;->a(Z)V

    .line 261
    return-void
.end method

.method public a(Lcom/iflytek/base/mms/entities/SmsItem;ILjava/lang/String;)V
    .locals 2
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;
    .param p2, "code"    # I
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-virtual {p0}, Laou;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u77ed\u4fe1\u53d1\u9001\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laou;->a(Z)V

    .line 273
    invoke-virtual {p0}, Laou;->e()V

    .line 274
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "desAdrress"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Laou;->c:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Laou;->e:Z

    .line 64
    return-void
.end method

.method public b(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 1
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 169
    if-nez p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-direct {p0, p1}, Laou;->d(Lcom/iflytek/base/mms/entities/SmsItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0, p1}, Laou;->c(Lcom/iflytek/base/mms/entities/SmsItem;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Laou;->e:Z

    return v0
.end method

.method public c()V
    .locals 8

    .prologue
    .line 89
    invoke-virtual {p0}, Laou;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startSchedule"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Laou;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "<------\u6536\u96c6\u5f00\u59cb------>"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Laou;->g:Z

    .line 92
    invoke-virtual {p0}, Laou;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IsScheduleRunning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Laou;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Laou;->b:Ljava/util/Timer;

    .line 94
    iget-object v0, p0, Laou;->b:Ljava/util/Timer;

    new-instance v1, Laou$1;

    invoke-direct {v1, p0}, Laou$1;-><init>(Laou;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Laou;->a:J

    const-wide/32 v6, 0x1d4c0

    add-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V

    .line 149
    return-void
.end method

.method public declared-synchronized d()J
    .locals 2

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Laou;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p0}, Laou;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cancelSchedule()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Laou;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Laou;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 245
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Laou;->g:Z

    .line 246
    invoke-virtual {p0}, Laou;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IsScheduleRunning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Laou;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Laou;->g:Z

    return v0
.end method

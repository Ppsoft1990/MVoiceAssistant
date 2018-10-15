.class public Lhp;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field private static volatile d:Lhp;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhm;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lhs;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhp;->e:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhp;->f:Ljava/util/ArrayList;

    .line 74
    return-void
.end method

.method public static a()Lhp;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lhp;->d:Lhp;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lhp;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sget-object v0, Lhp;->d:Lhp;

    if-nez v0, :cond_1

    .line 59
    const-class v1, Lhp;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lhp;->d:Lhp;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lhp;

    invoke-direct {v0}, Lhp;-><init>()V

    sput-object v0, Lhp;->d:Lhp;

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Lhp;->d:Lhp;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhp;->b(Landroid/content/Context;)V

    .line 66
    sget-object v0, Lhp;->d:Lhp;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lhp;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V
    .locals 0
    .param p0, "x0"    # Lhp;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p5, "x5"    # Lhr;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lhp;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "addToOutbox"    # Z
    .param p4, "simcard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p5, "listener"    # Lhr;

    .prologue
    .line 177
    :try_start_0
    iget-object v0, p0, Lhp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    const-wide/16 v4, 0x0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->setOutBoxValue(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;J)V

    .line 178
    iget-object v0, p0, Lhp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getTextMsgAdapter()Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    move-result-object v0

    .line 179
    invoke-static {p1}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v1, p4

    move-object v3, p2

    move v6, p3

    .line 178
    invoke-virtual/range {v0 .. v6}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->sendSms(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 181
    if-eqz p5, :cond_0

    .line 182
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lhr;->a(Lcom/iflytek/base/mms/entities/SmsItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v7

    .line 185
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "SmsManager"

    const-string/jumbo v1, "sendSms"

    invoke-static {v0, v1, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lhp;)Z
    .locals 1
    .param p0, "x0"    # Lhp;

    .prologue
    .line 39
    invoke-direct {p0}, Lhp;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lhp;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lhp;

    .prologue
    .line 39
    iget-object v0, p0, Lhp;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 5
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 297
    const/4 v2, 0x0

    .line 298
    .local v2, "size":I
    const/4 v0, 0x0

    .line 299
    .local v0, "arrays":[Lhm;
    iget-object v4, p0, Lhp;->e:Ljava/util/ArrayList;

    monitor-enter v4

    .line 300
    :try_start_0
    iget-object v3, p0, Lhp;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 301
    new-array v0, v2, [Lhm;

    .line 302
    iget-object v3, p0, Lhp;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 303
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 306
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 307
    .local v1, "observer":Lhm;
    invoke-interface {v1, p1}, Lhm;->onArrived(Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 303
    .end local v1    # "observer":Lhm;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 310
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SmsManagerImpl_worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lhp;->b:Landroid/os/HandlerThread;

    .line 109
    iget-object v0, p0, Lhp;->b:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 110
    iget-object v0, p0, Lhp;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    iget-object v0, p0, Lhp;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lhp;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhp;->c:Landroid/os/Handler;

    .line 114
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 411
    invoke-virtual {p0}, Lhp;->c()Lcom/iflytek/common/adaptation/detect/DetectType;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/detect/DetectType;->TYPE_AUTO:Lcom/iflytek/common/adaptation/detect/DetectType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lhp;->a:Landroid/content/Context;

    .line 412
    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getSimInfoAdapter()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->detect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhp;->a:Landroid/content/Context;

    .line 413
    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getDataMsgAdapter()Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;

    if-eqz v0, :cond_0

    .line 414
    const-string/jumbo v0, "SmsManager"

    const-string/jumbo v1, "needSendDataMsgBySms = true"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v0, 0x1

    .line 418
    :goto_0
    return v0

    .line 417
    :cond_0
    const-string/jumbo v0, "SmsManager"

    const-string/jumbo v1, "needSendDataMsgBySms = false"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 338
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 339
    .local v0, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    iget-object v1, p0, Lhp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getTextMsgAdapter()Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->getCursorMode(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v0

    .line 342
    .end local v0    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgId"    # J

    .prologue
    .line 398
    const-string/jumbo v0, "SmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmsRead | msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {p1, p2, p3}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->setSmsRead(Landroid/content/Context;J)V

    .line 400
    return-void
.end method

.method public a(Landroid/content/Context;Lhv;Lhr;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "mmsInfo"    # Lhv;
    .param p3, "listener"    # Lhr;

    .prologue
    .line 218
    iget-object v0, p0, Lhp;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lhp;->d()V

    .line 222
    :cond_0
    iget-object v0, p0, Lhp;->c:Landroid/os/Handler;

    new-instance v1, Lhp$2;

    invoke-direct {v1, p0, p3}, Lhp$2;-><init>(Lhp;Lhr;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;[BLhr;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "simcard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "contents"    # [B
    .param p6, "listener"    # Lhr;

    .prologue
    .line 353
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p5

    if-nez v0, :cond_2

    .line 354
    :cond_0
    const-string/jumbo v0, "SmsManager"

    const-string/jumbo v1, "sendDataMessage | address or contents is empty"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-eqz p6, :cond_1

    .line 356
    const/4 v0, 0x0

    const/16 v1, -0x3e8

    const-string/jumbo v2, "address or contents is empty"

    invoke-interface {p6, v0, v1, v2}, Lhr;->a(Lcom/iflytek/base/mms/entities/SmsItem;ILjava/lang/String;)V

    .line 390
    :cond_1
    :goto_0
    return-void

    .line 361
    :cond_2
    iget-object v0, p0, Lhp;->c:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 362
    invoke-direct {p0}, Lhp;->d()V

    .line 364
    :cond_3
    iget-object v7, p0, Lhp;->c:Landroid/os/Handler;

    new-instance v0, Lhp$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lhp$3;-><init>(Lhp;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;Lhr;[B)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 192
    if-eqz p1, :cond_2

    .line 193
    const-string/jumbo v3, "sms:"

    .line 194
    .local v3, "uriString":Ljava/lang/String;
    const-string/jumbo v4, "SmsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "send address = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-nez p2, :cond_0

    .line 196
    const-string/jumbo p2, ""

    .line 199
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 200
    .local v2, "smsUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SENDTO"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 201
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_1

    .line 202
    const-string/jumbo v4, "sms_body"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const/high16 v4, 0x14000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    :cond_1
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "smsUri":Landroid/net/Uri;
    .end local v3    # "uriString":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 209
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "smsUri":Landroid/net/Uri;
    .restart local v3    # "uriString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "SmsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "addToOutbox"    # Z
    .param p5, "simcard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p6, "listener"    # Lhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/iflytek/common/adaptation/entity/SimCard;",
            "Lhr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    .local p2, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "SmsManager"

    const-string/jumbo v1, "sendSms by assigning simcard"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lhp;->a:Landroid/content/Context;

    const-string/jumbo v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendSms by assigning simcard adress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", simcard="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    :cond_0
    const-string/jumbo v0, "SmsManager"

    const-string/jumbo v1, "send sms | address or content is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz p6, :cond_1

    .line 155
    const/4 v0, 0x0

    const/16 v1, -0x3e8

    const-string/jumbo v2, "address or content is null"

    invoke-interface {p6, v0, v1, v2}, Lhr;->a(Lcom/iflytek/base/mms/entities/SmsItem;ILjava/lang/String;)V

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    iget-object v0, p0, Lhp;->c:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 161
    invoke-direct {p0}, Lhp;->d()V

    .line 163
    :cond_3
    iget-object v7, p0, Lhp;->c:Landroid/os/Handler;

    new-instance v0, Lhp$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lhp$1;-><init>(Lhp;Ljava/util/List;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLhr;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "addToOutbox"    # Z
    .param p5, "listener"    # Lhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lhr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "SmsManager"

    const-string/jumbo v1, "sendSms by auto select simcard"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 125
    .local v5, "targetSimCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SIM_CHOICE"

    invoke-virtual {v0, v1}, Lil;->d(Ljava/lang/String;)I

    move-result v9

    .line 127
    .local v9, "simMode":I
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v0, v1}, Lhy;->f(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;

    move-result-object v7

    .line 129
    .local v7, "firstSimState":Lcom/iflytek/yd/system/SimState;
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v0, v1}, Lhy;->f(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;

    move-result-object v8

    .line 132
    .local v8, "secondSimState":Lcom/iflytek/yd/system/SimState;
    sget-object v0, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-ne v0, v7, :cond_1

    sget-object v0, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-ne v0, v8, :cond_1

    .line 133
    const/4 v0, 0x1

    if-ne v9, v0, :cond_0

    .line 134
    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .line 140
    invoke-virtual/range {v0 .. v6}, Lhp;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V

    .line 141
    return-void

    .line 136
    :cond_1
    sget-object v0, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-ne v0, v8, :cond_0

    .line 137
    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0
.end method

.method public a(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 3
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 289
    const-string/jumbo v0, "SmsManager"

    const-string/jumbo v1, "handleArrived"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-eqz p1, :cond_0

    .line 291
    const-string/jumbo v0, "SmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleArrived | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0, p1}, Lhp;->b(Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 294
    :cond_0
    return-void
.end method

.method public a(Lhm;)V
    .locals 2
    .param p1, "listener"    # Lhm;

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v1, p0, Lhp;->e:Ljava/util/ArrayList;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lhp;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    monitor-exit v1

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 270
    :cond_1
    :try_start_1
    iget-object v0, p0, Lhp;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lhp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getModeColumnName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    iput-object p1, p0, Lhp;->a:Landroid/content/Context;

    .line 82
    return-void
.end method

.method public b(Lhm;)V
    .locals 3
    .param p1, "listener"    # Lhm;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v2, p0, Lhp;->e:Ljava/util/ArrayList;

    monitor-enter v2

    .line 280
    :try_start_0
    iget-object v1, p0, Lhp;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 281
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 282
    monitor-exit v2

    goto :goto_0

    .line 285
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 284
    .restart local v0    # "index":I
    :cond_1
    :try_start_1
    iget-object v1, p0, Lhp;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 285
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public c()Lcom/iflytek/common/adaptation/detect/DetectType;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lhp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getDetectType()Lcom/iflytek/common/adaptation/detect/DetectType;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    iget-object v0, p0, Lhp;->g:Lhs;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lhs;

    invoke-direct {v0, p1}, Lhs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhp;->g:Lhs;

    .line 94
    :cond_0
    iget-object v0, p0, Lhp;->g:Lhs;

    invoke-virtual {v0, p1}, Lhs;->a(Landroid/content/Context;)V

    .line 95
    return-void
.end method

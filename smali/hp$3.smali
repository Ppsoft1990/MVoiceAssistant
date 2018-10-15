.class Lhp$3;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhp;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;[BLhr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/iflytek/common/adaptation/entity/SimCard;

.field final synthetic d:Lhr;

.field final synthetic e:[B

.field final synthetic f:Lhp;


# direct methods
.method constructor <init>(Lhp;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;Lhr;[B)V
    .locals 0
    .param p1, "this$0"    # Lhp;

    .prologue
    .line 364
    iput-object p1, p0, Lhp$3;->f:Lhp;

    iput-object p2, p0, Lhp$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lhp$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lhp$3;->c:Lcom/iflytek/common/adaptation/entity/SimCard;

    iput-object p5, p0, Lhp$3;->d:Lhr;

    iput-object p6, p0, Lhp$3;->e:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 368
    :try_start_0
    iget-object v0, p0, Lhp$3;->f:Lhp;

    invoke-static {v0}, Lhp;->a(Lhp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lhp$3;->f:Lhp;

    iget-object v1, p0, Lhp$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lhp$3;->b:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lhp$3;->c:Lcom/iflytek/common/adaptation/entity/SimCard;

    iget-object v5, p0, Lhp$3;->d:Lhr;

    invoke-static/range {v0 .. v5}, Lhp;->a(Lhp;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V

    .line 374
    :goto_0
    iget-object v0, p0, Lhp$3;->d:Lhr;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lhp$3;->d:Lhr;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhr;->a(Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 388
    :cond_0
    :goto_1
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lhp$3;->f:Lhp;

    invoke-static {v0}, Lhp;->b(Lhp;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getDataMsgAdapter()Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    move-result-object v0

    iget-object v1, p0, Lhp$3;->c:Lcom/iflytek/common/adaptation/entity/SimCard;

    iget-object v2, p0, Lhp$3;->a:Ljava/lang/String;

    iget-object v3, p0, Lhp$3;->b:Ljava/lang/String;

    iget-object v4, p0, Lhp$3;->e:[B

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->sendDataMessage(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/iflytek/common/adaptation/exception/SmsSendException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v6

    .line 378
    .local v6, "e":Lcom/iflytek/common/adaptation/exception/SmsSendException;
    const-string/jumbo v0, "SmsManager"

    const-string/jumbo v1, "sendDataMessage error, sendTextMessage"

    invoke-static {v0, v1, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    iget-object v0, p0, Lhp$3;->f:Lhp;

    invoke-static {v0}, Lhp;->b(Lhp;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDataMessage error, sendTextMessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lhl;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lhp$3;->f:Lhp;

    iget-object v1, p0, Lhp$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lhp$3;->b:Ljava/lang/String;

    iget-object v4, p0, Lhp$3;->c:Lcom/iflytek/common/adaptation/entity/SimCard;

    iget-object v5, p0, Lhp$3;->d:Lhr;

    move v3, v7

    invoke-static/range {v0 .. v5}, Lhp;->a(Lhp;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V

    .line 385
    const-string/jumbo v0, "SmsManager"

    const-string/jumbo v1, "sendDataMessage | sendSms"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

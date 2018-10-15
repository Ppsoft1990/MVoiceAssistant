.class Lrr$b;
.super Ljava/lang/Object;
.source "TelSdkBinder.java"

# interfaces
.implements Lrs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lrr;

.field private b:Lsh;


# direct methods
.method public constructor <init>(Lrr;Lsh;)V
    .locals 0
    .param p2, "ext"    # Lsh;

    .prologue
    .line 280
    iput-object p1, p0, Lrr$b;->a:Lrr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p2, p0, Lrr$b;->b:Lsh;

    .line 282
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/common/adaptation/entity/SimCard;II)V
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 311
    const-string/jumbo v1, "TelsdkBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v1, p0, Lrr$b;->b:Lsh;

    if-eqz v1, :cond_0

    .line 314
    :try_start_0
    iget-object v1, p0, Lrr$b;->b:Lsh;

    iget-object v2, p0, Lrr$b;->a:Lrr;

    invoke-static {v2, p1}, Lrr;->a(Lrr;Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    iget-object v3, p0, Lrr$b;->a:Lrr;

    invoke-static {v3, p3}, Lrr;->a(Lrr;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lsh;->a(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelsdkBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 317
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TelsdkBinder"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/yd/business/OperationInfo;)V
    .locals 6
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "operationInfo"    # Lcom/iflytek/yd/business/OperationInfo;

    .prologue
    .line 286
    const-string/jumbo v3, "TelsdkBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz p3, :cond_0

    instance-of v3, p3, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;

    if-eqz v3, :cond_0

    move-object v1, p3

    .line 288
    check-cast v1, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;

    .line 290
    .local v1, "telephonyFlowResult":Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;
    iget-object v3, p0, Lrr$b;->b:Lsh;

    if-eqz v3, :cond_0

    .line 291
    new-instance v2, Lcom/iflytek/lms/telephony/TelephonyInfo;

    invoke-direct {v2}, Lcom/iflytek/lms/telephony/TelephonyInfo;-><init>()V

    .line 292
    .local v2, "telephonyInfo":Lcom/iflytek/lms/telephony/TelephonyInfo;
    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/iflytek/lms/telephony/TelephonyInfo;->a(I)V

    .line 293
    invoke-virtual {v1}, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;->getTotalFlow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/lms/telephony/TelephonyInfo;->a(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1}, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;->getUsedFlow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/lms/telephony/TelephonyInfo;->b(Ljava/lang/String;)V

    .line 296
    :try_start_0
    iget-object v3, p0, Lrr$b;->b:Lsh;

    iget-object v4, p0, Lrr$b;->a:Lrr;

    invoke-static {v4, p1}, Lrr;->a(Lrr;Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v4

    invoke-interface {v3, v4, v2}, Lsh;->a(ILcom/iflytek/lms/telephony/TelephonyInfo;)V

    .line 297
    iget-object v3, p0, Lrr$b;->a:Lrr;

    invoke-static {v3}, Lrr;->b(Lrr;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v3

    const-string/jumbo v4, "data_transfer"

    .line 298
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "LX_100022"

    .line 297
    invoke-static {v4, v5}, Lwj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lwz;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 307
    .end local v1    # "telephonyFlowResult":Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;
    .end local v2    # "telephonyInfo":Lcom/iflytek/lms/telephony/TelephonyInfo;
    :cond_0
    :goto_0
    return-void

    .line 300
    .restart local v1    # "telephonyFlowResult":Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;
    .restart local v2    # "telephonyInfo":Lcom/iflytek/lms/telephony/TelephonyInfo;
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelsdkBinder"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 302
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TelsdkBinder"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

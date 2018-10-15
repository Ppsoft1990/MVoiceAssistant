.class public Laos;
.super Ljava/lang/Object;
.source "SMSCollectManager.java"

# interfaces
.implements Lcom/iflytek/yd/base/ProcessListener;


# static fields
.field private static a:Laos;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Laou;

.field private d:Laou;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Laos;->a:Laos;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Laos;->b:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Laos;->c:Laou;

    .line 24
    iput-object v0, p0, Laos;->d:Laou;

    .line 53
    iput-object p1, p0, Laos;->b:Landroid/content/Context;

    .line 54
    new-instance v0, Laou;

    sget-object v1, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->TELEPHONE_BILL:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    invoke-direct {v0, p1, v1}, Laou;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;)V

    iput-object v0, p0, Laos;->c:Laou;

    .line 55
    new-instance v0, Laou;

    sget-object v1, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->DATA_FLOW:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    invoke-direct {v0, p1, v1}, Laou;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;)V

    iput-object v0, p0, Laos;->d:Laou;

    .line 56
    invoke-static {p0}, Lcom/iflytek/viafly/ViaFlyApp;->a(Lcom/iflytek/yd/base/ProcessListener;)V

    .line 57
    return-void
.end method

.method public static a(Landroid/content/Context;)Laos;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Laos;->a:Laos;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Laos;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Laos;->a:Laos;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Laos;

    invoke-direct {v0, p0}, Laos;-><init>(Landroid/content/Context;)V

    sput-object v0, Laos;->a:Laos;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Laos;->a:Laos;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;Landroid/content/Context;)Z
    .locals 4
    .param p0, "type"    # Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const-string/jumbo v1, "SMSCollectManager"

    const-string/jumbo v2, "\u7f51\u7edc\u4e0d\u901a\uff01"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_0
    return v0

    .line 137
    :cond_0
    invoke-static {}, Laoq;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    const-string/jumbo v1, "SMSCollectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u7070\u5ea6\u63a7\u5236,SMSCollectController Switch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Laoq;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_1
    sget-object v1, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->TELEPHONE_BILL:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    if-ne p0, v1, :cond_2

    .line 143
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_IS_TELEPHONE_BILL_SMS_COLLECTED"

    invoke-virtual {v1, v2, v0}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    const-string/jumbo v1, "SMSCollectManager"

    const-string/jumbo v2, "\u8bdd\u8d39\u77ed\u4fe1\u5df2\u6536\u96c6\u8fc7\u4e86\uff01"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_IS_DATE_FLOW_SMS_COLLECTED"

    invoke-virtual {v1, v2, v0}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    const-string/jumbo v1, "SMSCollectManager"

    const-string/jumbo v2, "\u6d41\u91cf\u77ed\u4fe1\u5df2\u6536\u96c6\u8fc7\u4e86\uff01"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Laou;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Laos;->c:Laou;

    return-object v0
.end method

.method public a(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 2
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 63
    const-string/jumbo v0, "SMSCollectManager"

    const-string/jumbo v1, "collectSMS()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Laos;->c:Laou;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laos;->c:Laou;

    invoke-virtual {v0}, Laou;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string/jumbo v0, "SMSCollectManager"

    const-string/jumbo v1, "TelephoneBillSMSCollector maybe collect."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Laos;->c:Laou;

    invoke-virtual {v0, p1}, Laou;->b(Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 71
    :goto_0
    iget-object v0, p0, Laos;->d:Laou;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laos;->d:Laou;

    invoke-virtual {v0}, Laou;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string/jumbo v0, "SMSCollectManager"

    const-string/jumbo v1, "DataFlowSMSCollector maybe collect."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Laos;->d:Laou;

    invoke-virtual {v0, p1}, Laou;->b(Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 77
    :goto_1
    return-void

    .line 68
    :cond_0
    const-string/jumbo v0, "SMSCollectManager"

    const-string/jumbo v1, "TelephoneBillSMSCollector Will not collect,mTelephoneBillSMSCollector is not TaskRunning"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_1
    const-string/jumbo v0, "SMSCollectManager"

    const-string/jumbo v1, "DataFlowSMSCollector Will not collect,mDataFlowSMSCollector is not TaskRunning"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a(Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;JLjava/lang/String;)V
    .locals 4
    .param p1, "type"    # Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;
    .param p2, "startTime"    # J
    .param p4, "address"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string/jumbo v1, "SMSCollectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSchedule(),type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " startTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "smsCollector":Laou;
    sget-object v1, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->TELEPHONE_BILL:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    if-ne p1, v1, :cond_2

    .line 88
    iget-object v0, p0, Laos;->c:Laou;

    .line 92
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Laou;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    :cond_1
    const-string/jumbo v1, "SMSCollectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6b63\u5728\u6267\u884c\u6536\u96c6\u4efb\u52a1,return."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_1
    return-void

    .line 89
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->DATA_FLOW:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    if-ne p1, v1, :cond_0

    .line 90
    iget-object v0, p0, Laos;->d:Laou;

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v0, p2, p3}, Laou;->a(J)V

    .line 97
    invoke-virtual {v0, p4}, Laou;->a(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Laou;->c()V

    goto :goto_1
.end method

.method public b()Laou;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Laos;->d:Laou;

    return-object v0
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 103
    iget-object v1, p0, Laos;->c:Laou;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Laos;->c:Laou;

    invoke-virtual {v1}, Laou;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-string/jumbo v1, "SMSCollectManager"

    const-string/jumbo v2, "TelephoneBillSMSCollector isTaskRunning"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return v0

    .line 109
    :cond_0
    iget-object v1, p0, Laos;->d:Laou;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Laos;->d:Laou;

    invoke-virtual {v1}, Laou;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const-string/jumbo v1, "SMSCollectManager"

    const-string/jumbo v2, "DataFlowSMSCollector isTaskRunning"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProcessRestart()Z
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Laos;->c()Z

    move-result v0

    .line 122
    .local v0, "isRunning":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

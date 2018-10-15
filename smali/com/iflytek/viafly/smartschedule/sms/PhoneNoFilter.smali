.class public Lcom/iflytek/viafly/smartschedule/sms/PhoneNoFilter;
.super Lcom/iflytek/viafly/smartschedule/sms/SmsFilter;
.source "PhoneNoFilter.java"


# instance fields
.field private final TRAIN_NUMBER:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsFilter;-><init>()V

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "12306"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "18755129521"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "+8618755129521"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "18605512203"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "+8618605512203"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/PhoneNoFilter;->TRAIN_NUMBER:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filter(Lcom/iflytek/base/mms/entities/SmsItem;)Z
    .locals 8
    .param p1, "smsItem"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/sms/PhoneNoFilter;->getSuccessor()Lcom/iflytek/viafly/smartschedule/sms/SmsFilter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/sms/PhoneNoFilter;->getSuccessor()Lcom/iflytek/viafly/smartschedule/sms/SmsFilter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/iflytek/viafly/smartschedule/sms/SmsFilter;->filter(Lcom/iflytek/base/mms/entities/SmsItem;)Z

    move-result v1

    .line 23
    :cond_0
    if-ne v1, v3, :cond_1

    .line 36
    .end local v1    # "ret":Z
    :goto_0
    return v1

    .line 27
    .restart local v1    # "ret":Z
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 28
    goto :goto_0

    .line 31
    :cond_2
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/sms/PhoneNoFilter;->TRAIN_NUMBER:[Ljava/lang/String;

    array-length v6, v5

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    .line 32
    .local v0, "no":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v1, v3

    .line 33
    goto :goto_0

    .line 31
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "no":Ljava/lang/String;
    :cond_4
    move v1, v2

    .line 36
    goto :goto_0
.end method

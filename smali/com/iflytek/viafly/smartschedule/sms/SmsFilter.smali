.class public abstract Lcom/iflytek/viafly/smartschedule/sms/SmsFilter;
.super Ljava/lang/Object;
.source "SmsFilter.java"


# instance fields
.field private successor:Lcom/iflytek/viafly/smartschedule/sms/SmsFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract filter(Lcom/iflytek/base/mms/entities/SmsItem;)Z
.end method

.method public getSuccessor()Lcom/iflytek/viafly/smartschedule/sms/SmsFilter;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsFilter;->successor:Lcom/iflytek/viafly/smartschedule/sms/SmsFilter;

    return-object v0
.end method

.method public setSuccessor(Lcom/iflytek/viafly/smartschedule/sms/SmsFilter;)V
    .locals 0
    .param p1, "successor"    # Lcom/iflytek/viafly/smartschedule/sms/SmsFilter;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsFilter;->successor:Lcom/iflytek/viafly/smartschedule/sms/SmsFilter;

    .line 22
    return-void
.end method

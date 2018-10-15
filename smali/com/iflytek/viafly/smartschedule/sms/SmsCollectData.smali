.class public Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;
.super Ljava/lang/Object;
.source "SmsCollectData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SMSCollectData"


# instance fields
.field private content:Ljava/lang/String;

.field private destinationNumber:Ljava/lang/String;

.field private receiveTime:J

.field private replyNumber:Ljava/lang/String;

.field private sendTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "replyNumber"    # Ljava/lang/String;
    .param p4, "sendTime"    # J
    .param p6, "receiveTime"    # J

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->content:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->destinationNumber:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->replyNumber:Ljava/lang/String;

    .line 32
    iput-wide p4, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->sendTime:J

    .line 33
    iput-wide p6, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->receiveTime:J

    .line 34
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->destinationNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiveTime()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->receiveTime:J

    return-wide v0
.end method

.method public getReplyNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->replyNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSendTime()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->sendTime:J

    return-wide v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->content:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setDestinationNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "destinationNumber"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->destinationNumber:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setReceiveTime(J)V
    .locals 1
    .param p1, "receiveTime"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->receiveTime:J

    .line 89
    return-void
.end method

.method public setReplyNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "replyNumber"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->replyNumber:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setSendTime(J)V
    .locals 1
    .param p1, "sendTime"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->sendTime:J

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0x27

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SMSCollectData{content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", destinationNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->destinationNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", replyNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->replyNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sendTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->sendTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", receiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->receiveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

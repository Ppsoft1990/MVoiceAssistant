.class Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;
.super Ljava/lang/Object;
.source "SmsCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CollecterTask"
.end annotation


# instance fields
.field private smsUploadlist:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;)V
    .locals 4

    .prologue
    .line 190
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;->this$0:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;->smsUploadlist:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 192
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2}, Lbaa;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "currentTime":Ljava/lang/String;
    const-string/jumbo v1, "SmsCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CollecterTask.<init> | current time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method


# virtual methods
.method public addSmsItem(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 11
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;->smsUploadlist:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;

    .line 198
    .local v9, "data":Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;
    invoke-virtual {v9}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->getReplyNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->getContent()Ljava/lang/String;

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

    .line 200
    .local v8, "body":Ljava/lang/String;
    invoke-virtual {v9, v8}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;->setContent(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v0, "SmsCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addSmsItem | from the same address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",merge!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v8    # "body":Ljava/lang/String;
    .end local v9    # "data":Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v10, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;->smsUploadlist:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getBody()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getDate()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 210
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, v4}, Lbaa;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "endTime":Ljava/lang/String;
    const-string/jumbo v3, "SmsCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CollecterTask.run | start collect, current time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;->smsUploadlist:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;->this$0:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;

    invoke-static {v3}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->access$000(Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;)V

    .line 224
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v2, 0x0

    .line 218
    .local v2, "smsItems":[Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;->smsUploadlist:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 219
    .local v1, "len":I
    new-array v2, v1, [Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;

    .line 220
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;->smsUploadlist:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 222
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;->this$0:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;

    invoke-static {v3, v2}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->access$100(Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;[Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;)V

    .line 223
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;->this$0:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;

    invoke-static {v3}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->access$000(Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;)V

    goto :goto_0
.end method

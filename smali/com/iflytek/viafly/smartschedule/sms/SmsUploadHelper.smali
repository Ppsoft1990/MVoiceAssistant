.class public Lcom/iflytek/viafly/smartschedule/sms/SmsUploadHelper;
.super Ljava/lang/Object;
.source "SmsUploadHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startUpload(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;Lcom/iflytek/viafly/smartschedule/sms/SmsUploadListener;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;
    .param p2, "listener"    # Lcom/iflytek/viafly/smartschedule/sms/SmsUploadListener;

    .prologue
    .line 21
    new-instance v2, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;

    invoke-direct {v2, p0, p1, p2}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;Lcom/iflytek/viafly/smartschedule/sms/SmsUploadListener;)V

    .line 22
    .local v2, "smsUploadRequest":Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;
    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->sendRequest()J

    move-result-wide v0

    .line 23
    .local v0, "requestId":J
    return-wide v0
.end method

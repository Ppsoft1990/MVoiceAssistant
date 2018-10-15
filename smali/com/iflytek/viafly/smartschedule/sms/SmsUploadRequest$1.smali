.class Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest$1;
.super Ljava/lang/Object;
.source "SmsUploadRequest.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest$1;->this$0:Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 55
    const/16 v0, 0x47

    if-ne p5, v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest$1;->this$0:Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;->access$000(Lcom/iflytek/viafly/smartschedule/sms/SmsUploadRequest;ILcom/iflytek/yd/business/OperationInfo;JI)V

    .line 58
    :cond_0
    return-void
.end method

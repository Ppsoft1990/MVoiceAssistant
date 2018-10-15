.class public Lcom/iflytek/viafly/mutiprocess/MainBinderService$a;
.super Laqk$a;
.source "MainBinderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mutiprocess/MainBinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mutiprocess/MainBinderService;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/mutiprocess/MainBinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mutiprocess/MainBinderService;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/iflytek/viafly/mutiprocess/MainBinderService$a;->a:Lcom/iflytek/viafly/mutiprocess/MainBinderService;

    invoke-direct {p0}, Laqk$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultLong"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/MainBinderService$a;->a:Lcom/iflytek/viafly/mutiprocess/MainBinderService;

    invoke-static {v1}, Lcom/iflytek/viafly/mutiprocess/MainBinderService;->a(Lcom/iflytek/viafly/mutiprocess/MainBinderService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getTextMsgAdapter()Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->filterMmsReceive(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/iflytek/common/adaptation/exception/SmsSaveToInboxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/iflytek/common/adaptation/exception/SmsParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lcom/iflytek/common/adaptation/exception/SmsSaveToInboxException;
    const-string/jumbo v1, "MainBinderService"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v0    # "e":Lcom/iflytek/common/adaptation/exception/SmsSaveToInboxException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Lcom/iflytek/common/adaptation/exception/SmsParserException;
    const-string/jumbo v1, "MainBinderService"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "logContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/mutiprocess/MainBinderService$a;->a:Lcom/iflytek/viafly/mutiprocess/MainBinderService;

    invoke-static {v0}, Lcom/iflytek/viafly/mutiprocess/MainBinderService;->a(Lcom/iflytek/viafly/mutiprocess/MainBinderService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultBoolean"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "logContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/mutiprocess/MainBinderService$a;->a:Lcom/iflytek/viafly/mutiprocess/MainBinderService;

    invoke-static {v0}, Lcom/iflytek/viafly/mutiprocess/MainBinderService;->a(Lcom/iflytek/viafly/mutiprocess/MainBinderService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Laoq;->a()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/mutiprocess/MainBinderService$a;->a:Lcom/iflytek/viafly/mutiprocess/MainBinderService;

    invoke-static {v0}, Lcom/iflytek/viafly/mutiprocess/MainBinderService;->a(Lcom/iflytek/viafly/mutiprocess/MainBinderService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getDetectType()Lcom/iflytek/common/adaptation/detect/DetectType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/DetectType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/mutiprocess/MainBinderService$a;->a:Lcom/iflytek/viafly/mutiprocess/MainBinderService;

    invoke-static {v0}, Lcom/iflytek/viafly/mutiprocess/MainBinderService;->a(Lcom/iflytek/viafly/mutiprocess/MainBinderService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getTextMsgAdapter()Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->getMmsReceiveAction()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

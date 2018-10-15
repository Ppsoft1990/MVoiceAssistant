.class public Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;
.super Landroid/os/Handler;
.source "SmartHomeDownloadStateListener.java"

# interfaces
.implements Lno$c;


# static fields
.field private static final MSG_DOWNLOAD_ERROR:I = 0x1

.field private static final MSG_INSTALL_ERROR:I = 0x3

.field private static final MSG_INSTALL_SUCCESS:I = 0x2

.field private static final MSG_START_DOWNLOAD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AppDownloadStateListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIdentify:Ljava/lang/String;

.field private mLocalBusinssView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "identify"    # Ljava/lang/String;
    .param p3, "localBusinessWebView"    # Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mIdentify:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mLocalBusinssView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    .line 38
    return-void
.end method

.method private showToast(II)V
    .locals 3
    .param p1, "textId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AppDownloadStateListener"

    const-string/jumbo v2, "showToast()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public downloadError(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->sendMessage(Landroid/os/Message;)Z

    .line 56
    return-void
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 42
    const-string/jumbo v1, "AppDownloadStateListener"

    const-string/jumbo v2, "downloadStatusChanged"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.pendding"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->sendEmptyMessage(I)Z

    .line 51
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    const v0, 0x7f0c0004

    invoke-direct {p0, v0, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->showToast(II)V

    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mLocalBusinssView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mLocalBusinssView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateStart(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mIdentify:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mLocalBusinssView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mLocalBusinssView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateError(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mIdentify:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 86
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const v1, 0xc3c09

    if-ne v0, v1, :cond_2

    .line 87
    const v0, 0x7f0c012c

    invoke-direct {p0, v0, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->showToast(II)V

    goto :goto_0

    .line 88
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const v1, 0xc3c0a

    if-ne v0, v1, :cond_3

    .line 89
    const v0, 0x7f0c0308

    invoke-direct {p0, v0, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->showToast(II)V

    goto :goto_0

    .line 90
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x384

    if-ne v0, v1, :cond_4

    .line 91
    const v0, 0x7f0c012a

    invoke-direct {p0, v0, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->showToast(II)V

    goto :goto_0

    .line 92
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x385

    if-ne v0, v1, :cond_5

    .line 93
    const v0, 0x7f0c00df

    invoke-direct {p0, v0, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->showToast(II)V

    goto/16 :goto_0

    .line 94
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x38b

    if-ne v0, v1, :cond_0

    .line 95
    const v0, 0x7f0c00af

    invoke-direct {p0, v0, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->showToast(II)V

    goto/16 :goto_0

    .line 99
    :pswitch_2
    const v0, 0x7f0c0006

    invoke-direct {p0, v0, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->showToast(II)V

    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mLocalBusinssView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mLocalBusinssView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInstallError(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mIdentify:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :pswitch_3
    const v0, 0x7f0c0007

    invoke-direct {p0, v0, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->showToast(II)V

    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mLocalBusinssView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mLocalBusinssView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInstallSuccess(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->mIdentify:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    const-string/jumbo v1, "install_result"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, "errorCode":I
    if-nez v0, :cond_1

    .line 65
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->sendEmptyMessage(I)Z

    .line 70
    .end local v0    # "errorCode":I
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local v0    # "errorCode":I
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

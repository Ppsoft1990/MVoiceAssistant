.class Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$1;
.super Ljava/lang/Object;
.source "SmartHomeBusinessHandler.java"

# interfaces
.implements Lcom/iflytek/viafly/smarthome/GetAppUrlObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$1;->this$0:Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;

    .prologue
    .line 371
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$1;->this$0:Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;

    invoke-static {v0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->access$000(Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u83b7\u53d6\u4e0b\u8f7d\u5730\u5740\u51fa\u9519"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 374
    :cond_1
    return-void
.end method

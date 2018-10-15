.class Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$3;
.super Ljava/lang/Object;
.source "SmartHomeBusinessHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->onFailed(ILjava/lang/String;Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;

.field final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$3;->this$0:Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;

    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$3;->val$info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$3;->val$info:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$3;->this$0:Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;

    invoke-static {v0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->access$200(Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$3;->val$info:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1185
    :cond_0
    return-void
.end method

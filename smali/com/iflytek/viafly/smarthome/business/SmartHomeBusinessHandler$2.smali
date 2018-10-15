.class Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$2;
.super Ljava/lang/Object;
.source "SmartHomeBusinessHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 417
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$2;->this$0:Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$2;->this$0:Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;

    invoke-static {v0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->access$100(Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u8fde\u63a5\u7f51\u7edc\u540e\u518d\u8bd5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 422
    return-void
.end method

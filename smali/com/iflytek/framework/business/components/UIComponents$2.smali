.class Lcom/iflytek/framework/business/components/UIComponents$2;
.super Ljava/lang/Object;
.source "UIComponents.java"

# interfaces
.implements Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/business/components/UIComponents;->onHandleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/UIComponents;

.field final synthetic val$builder:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

.field final synthetic val$obj:Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/UIComponents;Lcom/iflytek/viafly/ui/InteractiveToast$Builder;Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/UIComponents;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/iflytek/framework/business/components/UIComponents$2;->this$0:Lcom/iflytek/framework/business/components/UIComponents;

    iput-object p2, p0, Lcom/iflytek/framework/business/components/UIComponents$2;->val$builder:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    iput-object p3, p0, Lcom/iflytek/framework/business/components/UIComponents$2;->val$obj:Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBtnClick(I)V
    .locals 3
    .param p1, "btnId"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/iflytek/framework/business/components/UIComponents$2;->val$builder:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->getToast()Lcom/iflytek/viafly/ui/InteractiveToast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/iflytek/framework/business/components/UIComponents$2;->val$builder:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->getToast()Lcom/iflytek/viafly/ui/InteractiveToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/InteractiveToast;->dismiss()V

    .line 252
    iget-object v0, p0, Lcom/iflytek/framework/business/components/UIComponents$2;->val$obj:Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;

    iget-object v0, v0, Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;->mJsCallBack:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/iflytek/framework/business/components/UIComponents$2;->this$0:Lcom/iflytek/framework/business/components/UIComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/UIComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/framework/business/components/UIComponents$2;->val$obj:Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;

    iget-object v2, v2, Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;->mJsCallBack:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method

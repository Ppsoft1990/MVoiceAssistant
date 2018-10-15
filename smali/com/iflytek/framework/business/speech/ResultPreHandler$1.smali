.class Lcom/iflytek/framework/business/speech/ResultPreHandler$1;
.super Lahd$a;
.source "ResultPreHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/business/speech/ResultPreHandler;->preHandleLastResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/speech/ResultPreHandler;

.field final synthetic val$result:Lcom/iflytek/yd/speech/ViaAsrResult;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/speech/ResultPreHandler;Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/speech/ResultPreHandler;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler$1;->this$0:Lcom/iflytek/framework/business/speech/ResultPreHandler;

    iput-object p2, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler$1;->val$result:Lcom/iflytek/yd/speech/ViaAsrResult;

    invoke-direct {p0}, Lahd$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler$1;->this$0:Lcom/iflytek/framework/business/speech/ResultPreHandler;

    invoke-static {v0}, Lcom/iflytek/framework/business/speech/ResultPreHandler;->access$000(Lcom/iflytek/framework/business/speech/ResultPreHandler;)Lcom/iflytek/framework/business/interfaces/IResultCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler$1;->val$result:Lcom/iflytek/yd/speech/ViaAsrResult;

    invoke-interface {v0, v1}, Lcom/iflytek/framework/business/interfaces/IResultCallback;->needShowLocate(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 321
    return-void
.end method

.class Lcom/iflytek/viafly/ui/activity/SpeechDialog$3;
.super Ljava/lang/Object;
.source "SpeechDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/activity/SpeechDialog;->delayStartSpeech()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$3;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 371
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->isLoadFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$3;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->access$100(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$3;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->access$200(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)V

    goto :goto_0
.end method

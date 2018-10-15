.class Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl$2;
.super Ljava/lang/Object;
.source "PluginContextImpl.java"

# interfaces
.implements Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl;->showAdaptationDialog(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/yd/ui/OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl;

.field final synthetic val$listener:Lcom/iflytek/yd/ui/OnClickListener;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl;Lcom/iflytek/yd/ui/OnClickListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl$2;->this$1:Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl;

    iput-object p2, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl$2;->val$listener:Lcom/iflytek/yd/ui/OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 635
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl$2;->val$listener:Lcom/iflytek/yd/ui/OnClickListener;

    invoke-interface {v0, p1}, Lcom/iflytek/yd/ui/OnClickListener;->onClick(I)V

    .line 636
    return-void
.end method

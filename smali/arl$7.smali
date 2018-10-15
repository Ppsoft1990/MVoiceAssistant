.class Larl$7;
.super Ljava/lang/Object;
.source "PluginControllerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larl;->b(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Larl;


# direct methods
.method constructor <init>(Larl;I)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 238
    iput-object p1, p0, Larl$7;->b:Larl;

    iput p2, p0, Larl$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 242
    iget-object v0, p0, Larl$7;->b:Larl;

    invoke-static {v0}, Larl;->a(Larl;)Larl$a;

    move-result-object v0

    iget v1, p0, Larl$7;->a:I

    invoke-interface {v0, v1}, Larl$a;->b(I)V

    .line 243
    return-void
.end method

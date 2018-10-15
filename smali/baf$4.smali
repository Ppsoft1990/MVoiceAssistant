.class Lbaf$4;
.super Ljava/lang/Object;
.source "BaiduChanelUpdateHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaf;->a(Lcom/baidu/aiupdatesdk/UpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbaf;


# direct methods
.method constructor <init>(Lbaf;)V
    .locals 0
    .param p1, "this$0"    # Lbaf;

    .prologue
    .line 162
    iput-object p1, p0, Lbaf$4;->a:Lbaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 166
    const-string/jumbo v0, "BaiduChanelUpdateHelper"

    const-string/jumbo v1, "onDismiss"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lbaf$4;->a:Lbaf;

    invoke-static {v0}, Lbaf;->c(Lbaf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxs;->a(Landroid/content/Context;)Lxs;

    move-result-object v0

    invoke-virtual {v0}, Lxs;->c()Z

    .line 168
    return-void
.end method

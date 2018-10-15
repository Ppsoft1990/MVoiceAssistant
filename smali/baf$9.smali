.class Lbaf$9;
.super Ljava/lang/Object;
.source "BaiduChanelUpdateHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaf;->b(Lcom/baidu/aiupdatesdk/UpdateInfo;)V
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
    .line 295
    iput-object p1, p0, Lbaf$9;->a:Lbaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 299
    iget-object v0, p0, Lbaf$9;->a:Lbaf;

    invoke-static {v0}, Lbaf;->c(Lbaf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxs;->a(Landroid/content/Context;)Lxs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lxs;->a(I)V

    .line 300
    iget-object v0, p0, Lbaf$9;->a:Lbaf;

    invoke-static {v0}, Lbaf;->c(Lbaf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/AIUpdateSDK;->updateDownload(Landroid/content/Context;)V

    .line 303
    return-void
.end method

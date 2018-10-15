.class Lasj$a;
.super Ljava/lang/Object;
.source "InstalledPluginListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lasj;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Lasj;IZ)V
    .locals 1
    .param p2, "position"    # I
    .param p3, "updateOrUninstall"    # Z

    .prologue
    .line 232
    iput-object p1, p0, Lasj$a;->a:Lasj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lasj$a;->b:I

    .line 233
    iput p2, p0, Lasj$a;->b:I

    .line 234
    iput-boolean p3, p0, Lasj$a;->c:Z

    .line 235
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v2, p0, Lasj$a;->a:Lasj;

    invoke-static {v2}, Lasj;->a(Lasj;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lasj$a;->b:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lase;

    .line 240
    .local v0, "info":Lase;
    if-nez v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v2, p0, Lasj$a;->a:Lasj;

    invoke-static {v2}, Lasj;->b(Lasj;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 244
    const/4 v1, 0x3

    .line 245
    .local v1, "msgWhat":I
    iget-boolean v2, p0, Lasj$a;->c:Z

    if-eqz v2, :cond_2

    .line 246
    const/4 v1, 0x2

    .line 248
    :cond_2
    iget-object v2, p0, Lasj$a;->a:Lasj;

    invoke-static {v2}, Lasj;->b(Lasj;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

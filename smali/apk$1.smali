.class Lapk$1;
.super Ljava/lang/Object;
.source "MusicHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapk;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/music/business/entry/MusicHistory;

.field final synthetic b:Lapk;


# direct methods
.method constructor <init>(Lapk;Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V
    .locals 0
    .param p1, "this$0"    # Lapk;

    .prologue
    .line 105
    iput-object p1, p0, Lapk$1;->b:Lapk;

    iput-object p2, p0, Lapk$1;->a:Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v1, p0, Lapk$1;->a:Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    iget-object v0, p0, Lapk$1;->a:Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->m()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(Z)V

    .line 109
    iget-object v0, p0, Lapk$1;->b:Lapk;

    invoke-virtual {v0}, Lapk;->notifyDataSetChanged()V

    .line 110
    iget-object v0, p0, Lapk$1;->b:Lapk;

    invoke-static {v0}, Lapk;->a(Lapk;)Lapk$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lapk$1;->b:Lapk;

    invoke-static {v0}, Lapk;->a(Lapk;)Lapk$a;

    move-result-object v0

    invoke-interface {v0}, Lapk$a;->a()V

    .line 113
    :cond_0
    return-void

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

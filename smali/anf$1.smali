.class Lanf$1;
.super Ljava/lang/Object;
.source "BookHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanf;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

.field final synthetic b:Lanf;


# direct methods
.method constructor <init>(Lanf;Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;)V
    .locals 0
    .param p1, "this$0"    # Lanf;

    .prologue
    .line 110
    iput-object p1, p0, Lanf$1;->b:Lanf;

    iput-object p2, p0, Lanf$1;->a:Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v1, p0, Lanf$1;->a:Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    iget-object v0, p0, Lanf$1;->a:Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->k()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a(Z)V

    .line 114
    iget-object v0, p0, Lanf$1;->b:Lanf;

    invoke-virtual {v0}, Lanf;->notifyDataSetChanged()V

    .line 115
    iget-object v0, p0, Lanf$1;->b:Lanf;

    invoke-static {v0}, Lanf;->a(Lanf;)Lanf$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lanf$1;->b:Lanf;

    invoke-static {v0}, Lanf;->a(Lanf;)Lanf$a;

    move-result-object v0

    invoke-interface {v0}, Lanf$a;->a()V

    .line 118
    :cond_0
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

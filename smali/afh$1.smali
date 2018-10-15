.class Lafh$1;
.super Ljava/lang/Object;
.source "BookMoreAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafh;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

.field final synthetic b:Lafh;


# direct methods
.method constructor <init>(Lafh;Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;)V
    .locals 0
    .param p1, "this$0"    # Lafh;

    .prologue
    .line 112
    iput-object p1, p0, Lafh$1;->b:Lafh;

    iput-object p2, p0, Lafh$1;->a:Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    const-string/jumbo v1, "entry"

    const-string/jumbo v2, "mic_voice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string/jumbo v1, "contentId"

    iget-object v2, p0, Lafh$1;->a:Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string/jumbo v1, "chapterId"

    iget-object v2, p0, Lafh$1;->a:Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string/jumbo v1, "offset"

    iget-object v2, p0, Lafh$1;->a:Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

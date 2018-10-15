.class Lanf$2;
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
    .line 120
    iput-object p1, p0, Lanf$2;->b:Lanf;

    iput-object p2, p0, Lanf$2;->a:Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v5, p0, Lanf$2;->b:Lanf;

    invoke-static {v5}, Lanf;->b(Lanf;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    iget-object v6, p0, Lanf$2;->a:Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    iget-object v5, p0, Lanf$2;->a:Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    invoke-virtual {v5}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->k()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v6, v5}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a(Z)V

    .line 125
    iget-object v5, p0, Lanf$2;->b:Lanf;

    invoke-virtual {v5}, Lanf;->notifyDataSetChanged()V

    .line 126
    iget-object v5, p0, Lanf$2;->b:Lanf;

    invoke-static {v5}, Lanf;->a(Lanf;)Lanf$a;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 127
    iget-object v5, p0, Lanf$2;->b:Lanf;

    invoke-static {v5}, Lanf;->a(Lanf;)Lanf$a;

    move-result-object v5

    invoke-interface {v5}, Lanf$a;->a()V

    .line 149
    :cond_0
    :goto_1
    return-void

    .line 124
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 132
    :cond_2
    iget-object v5, p0, Lanf$2;->a:Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    invoke-virtual {v5}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "contentId":Ljava/lang/String;
    iget-object v5, p0, Lanf$2;->a:Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    invoke-virtual {v5}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "chapterId":Ljava/lang/String;
    iget-object v5, p0, Lanf$2;->a:Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    invoke-virtual {v5}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h()I

    move-result v4

    .line 135
    .local v4, "position":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 138
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lanf$2;->b:Lanf;

    invoke-static {v5}, Lanf;->c(Lanf;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "entry"

    const-string/jumbo v6, "history"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string/jumbo v5, "contentId"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string/jumbo v5, "chapterId"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string/jumbo v5, "offset"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    iget-object v5, p0, Lanf$2;->b:Lanf;

    invoke-static {v5}, Lanf;->c(Lanf;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v2, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "d_operation"

    const-string/jumbo v6, "itemClick"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v5

    const-string/jumbo v6, "FT90104"

    invoke-virtual {v5, v6, v2}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

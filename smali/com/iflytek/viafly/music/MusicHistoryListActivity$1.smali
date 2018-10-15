.class Lcom/iflytek/viafly/music/MusicHistoryListActivity$1;
.super Ljava/lang/Object;
.source "MusicHistoryListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/music/MusicHistoryListActivity;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/iflytek/viafly/music/MusicHistoryListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/music/MusicHistoryListActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/music/MusicHistoryListActivity;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity$1;->b:Lcom/iflytek/viafly/music/MusicHistoryListActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    .line 178
    .local v1, "history":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    invoke-static {}, Laqh;->a()Laqh;

    move-result-object v3

    invoke-virtual {v3, v1}, Laqh;->b(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V

    goto :goto_0

    .line 180
    .end local v1    # "history":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity$1;->b:Lcom/iflytek/viafly/music/MusicHistoryListActivity;

    const-string/jumbo v3, "\u5220\u9664\u6210\u529f"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 182
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity$1;->b:Lcom/iflytek/viafly/music/MusicHistoryListActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->a(Lcom/iflytek/viafly/music/MusicHistoryListActivity;I)I

    .line 183
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity$1;->b:Lcom/iflytek/viafly/music/MusicHistoryListActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->a(Lcom/iflytek/viafly/music/MusicHistoryListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 184
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity$1;->b:Lcom/iflytek/viafly/music/MusicHistoryListActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->b(Lcom/iflytek/viafly/music/MusicHistoryListActivity;)V

    .line 185
    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity$1;->b:Lcom/iflytek/viafly/music/MusicHistoryListActivity;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/MusicHistoryListActivity;->a()V

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_operation"

    const-string/jumbo v3, "delete"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90103"

    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 189
    return-void
.end method

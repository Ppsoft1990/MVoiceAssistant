.class Lapk$2;
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

.field final synthetic b:I

.field final synthetic c:Lapk;


# direct methods
.method constructor <init>(Lapk;Lcom/iflytek/viafly/music/business/entry/MusicHistory;I)V
    .locals 0
    .param p1, "this$0"    # Lapk;

    .prologue
    .line 115
    iput-object p1, p0, Lapk$2;->c:Lapk;

    iput-object p2, p0, Lapk$2;->a:Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    iput p3, p0, Lapk$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v1, p0, Lapk$2;->c:Lapk;

    invoke-static {v1}, Lapk;->b(Lapk;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v2, p0, Lapk$2;->a:Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    iget-object v1, p0, Lapk$2;->a:Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->m()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(Z)V

    .line 120
    iget-object v1, p0, Lapk$2;->c:Lapk;

    invoke-virtual {v1}, Lapk;->notifyDataSetChanged()V

    .line 121
    iget-object v1, p0, Lapk$2;->c:Lapk;

    invoke-static {v1}, Lapk;->a(Lapk;)Lapk$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lapk$2;->c:Lapk;

    invoke-static {v1}, Lapk;->a(Lapk;)Lapk$a;

    move-result-object v1

    invoke-interface {v1}, Lapk$a;->a()V

    .line 134
    :cond_0
    :goto_1
    return-void

    .line 119
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 126
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_HISTORY:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lapk$2;->c:Lapk;

    invoke-static {v3}, Lapk;->c(Lapk;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v3, p0, Lapk$2;->b:I

    invoke-static {v1, v2, v3}, Laqf;->a(Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;Ljava/util/List;I)V

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_entry"

    const-string/jumbo v2, "history"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90008"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_operation"

    const-string/jumbo v2, "itemClick"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90103"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

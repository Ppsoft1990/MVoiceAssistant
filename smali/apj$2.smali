.class Lapj$2;
.super Ljava/lang/Object;
.source "MusicFavorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapj;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/music/business/entry/MusicFavor;

.field final synthetic b:I

.field final synthetic c:Lapj;


# direct methods
.method constructor <init>(Lapj;Lcom/iflytek/viafly/music/business/entry/MusicFavor;I)V
    .locals 0
    .param p1, "this$0"    # Lapj;

    .prologue
    .line 116
    iput-object p1, p0, Lapj$2;->c:Lapj;

    iput-object p2, p0, Lapj$2;->a:Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    iput p3, p0, Lapj$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v1, p0, Lapj$2;->c:Lapj;

    invoke-static {v1}, Lapj;->b(Lapj;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    iget-object v2, p0, Lapj$2;->a:Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    iget-object v1, p0, Lapj$2;->a:Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->o()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a(Z)V

    .line 121
    iget-object v1, p0, Lapj$2;->c:Lapj;

    invoke-virtual {v1}, Lapj;->notifyDataSetChanged()V

    .line 122
    iget-object v1, p0, Lapj$2;->c:Lapj;

    invoke-static {v1}, Lapj;->a(Lapj;)Lapj$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lapj$2;->c:Lapj;

    invoke-static {v1}, Lapj;->a(Lapj;)Lapj$a;

    move-result-object v1

    invoke-interface {v1}, Lapj$a;->a()V

    .line 135
    :cond_0
    :goto_1
    return-void

    .line 120
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 127
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_FAVORITE:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lapj$2;->c:Lapj;

    invoke-static {v3}, Lapj;->c(Lapj;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v3, p0, Lapj$2;->b:I

    invoke-static {v1, v2, v3}, Laqf;->a(Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;Ljava/util/List;I)V

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_entry"

    const-string/jumbo v2, "favor"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90008"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_operation"

    const-string/jumbo v2, "itemClick"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90101"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

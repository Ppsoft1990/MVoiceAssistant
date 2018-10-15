.class Lcom/iflytek/viafly/music/MusicFavorListActivity$1;
.super Ljava/lang/Object;
.source "MusicFavorListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/music/MusicFavorListActivity;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/iflytek/viafly/music/MusicFavorListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/music/MusicFavorListActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/music/MusicFavorListActivity;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity$1;->b:Lcom/iflytek/viafly/music/MusicFavorListActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v3, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 189
    .local v2, "ids":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity$1;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    invoke-virtual {v3}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->n()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity$1;->b:Lcom/iflytek/viafly/music/MusicFavorListActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->a(Lcom/iflytek/viafly/music/MusicFavorListActivity;)Laqb;

    move-result-object v3

    invoke-virtual {v3, v2}, Laqb;->a([Ljava/lang/String;)J

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "d_operation"

    const-string/jumbo v4, "delete"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v3

    const-string/jumbo v4, "FT90101"

    invoke-virtual {v3, v4, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 196
    return-void
.end method

.class Lafp$1;
.super Ljava/lang/Object;
.source "MusicMessageItemDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafp;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafo;

.field final synthetic b:Lafp;


# direct methods
.method constructor <init>(Lafp;Lafo;)V
    .locals 0
    .param p1, "this$0"    # Lafp;

    .prologue
    .line 50
    iput-object p1, p0, Lafp$1;->b:Lafp;

    iput-object p2, p0, Lafp$1;->a:Lafo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v4

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lafp$1;->a:Lafo;

    iget-object v6, v6, Lafo;->i:Lafn;

    invoke-virtual {v6}, Lafn;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lafp$1;->a:Lafo;

    iget-object v7, v7, Lafo;->i:Lafn;

    invoke-virtual {v7}, Lafn;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "localList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;>;"
    iget-object v4, p0, Lafp$1;->a:Lafo;

    iget-object v4, v4, Lafo;->i:Lafn;

    invoke-virtual {v4}, Lafn;->a()Ljava/util/List;

    move-result-object v2

    .line 55
    .local v2, "netList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v3, "totalList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    sget-object v4, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_RECOGNITION:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Laqf;->a(Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;Ljava/util/List;I)V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "d_entry"

    const-string/jumbo v5, "mic"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v4

    const-string/jumbo v5, "FT90008"

    invoke-virtual {v4, v5, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    return-void
.end method

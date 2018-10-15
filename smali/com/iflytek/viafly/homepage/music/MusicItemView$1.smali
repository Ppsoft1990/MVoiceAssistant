.class Lcom/iflytek/viafly/homepage/music/MusicItemView$1;
.super Ljava/lang/Object;
.source "MusicItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/music/MusicItemView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/music/MusicItemView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/music/MusicItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/music/MusicItemView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView$1;->a:Lcom/iflytek/viafly/homepage/music/MusicItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView$1;->a:Lcom/iflytek/viafly/homepage/music/MusicItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/music/MusicItemView;->a(Lcom/iflytek/viafly/homepage/music/MusicItemView;)Lcom/iflytek/viafly/homepage/music/MusicItemView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView$1;->a:Lcom/iflytek/viafly/homepage/music/MusicItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/music/MusicItemView;->a(Lcom/iflytek/viafly/homepage/music/MusicItemView;)Lcom/iflytek/viafly/homepage/music/MusicItemView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/music/MusicItemView$1;->a:Lcom/iflytek/viafly/homepage/music/MusicItemView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/music/MusicItemView;->b(Lcom/iflytek/viafly/homepage/music/MusicItemView;)Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/homepage/music/MusicItemView$a;->a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    .line 55
    :cond_0
    return-void
.end method

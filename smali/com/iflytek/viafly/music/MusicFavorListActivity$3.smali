.class Lcom/iflytek/viafly/music/MusicFavorListActivity$3;
.super Ljava/lang/Object;
.source "MusicFavorListActivity.java"

# interfaces
.implements Laqb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/music/MusicFavorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/music/MusicFavorListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/music/MusicFavorListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/music/MusicFavorListActivity;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity$3;->a:Lcom/iflytek/viafly/music/MusicFavorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddCollect(ZLjava/lang/String;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 307
    return-void
.end method

.method public onDeleteCollect(ZLjava/lang/String;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 311
    if-eqz p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity$3;->a:Lcom/iflytek/viafly/music/MusicFavorListActivity;

    new-instance v1, Lcom/iflytek/viafly/music/MusicFavorListActivity$3$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/music/MusicFavorListActivity$3$1;-><init>(Lcom/iflytek/viafly/music/MusicFavorListActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 324
    :cond_0
    return-void
.end method

.method public onQueryCollect(ZLjava/lang/String;)V
    .locals 0
    .param p1, "collected"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 303
    return-void
.end method

.method public onResult()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method
